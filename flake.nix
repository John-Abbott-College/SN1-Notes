{
  description = "Jekyll (Ruby) flake for Programming in Sciences website development";

  inputs = {
    nixpkgs.url = "nixpkgs";
    ruby-nix.url = "github:inscapist/ruby-nix";
    # a fork that supports platform dependant gem
    bundix = {
      url = "github:inscapist/bundix/main";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    fu.url = "github:numtide/flake-utils";
    bob-ruby.url = "github:bobvanderlinden/nixpkgs-ruby";
    bob-ruby.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    {
      self,
      nixpkgs,
      fu,
      ruby-nix,
      bundix,
      bob-ruby,
    }:
    with fu.lib;
    eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ bob-ruby.overlays.default ];
        };
        rubyNix = ruby-nix.lib pkgs;

        # TODO generate gemset.nix with bundix
        gemset = if builtins.pathExists ./gemset.nix then import ./gemset.nix else { };

        # If you want to override gem build config, see
        #   https://github.com/NixOS/nixpkgs/blob/master/pkgs/development/ruby-modules/gem-config/default.nix
        gemConfig = { };

        # See available versions here: https://github.com/bobvanderlinden/nixpkgs-ruby/blob/master/ruby/versions.json
        ruby = pkgs."ruby-3.3.1";

        # Running bundix would regenerate `gemset.nix`
        bundixcli = bundix.packages.${system}.default;

        # Use these instead of the original `bundle <mutate>` commands
        bundleLock = pkgs.writeShellScriptBin "bundle-lock" ''
          export BUNDLE_FORCE_RUBY_PLATFORM=true
          export BUNDLE_PATH=vendor/bundle
          bundle lock
        '';
        bundleUpdate = pkgs.writeShellScriptBin "bundle-update" ''
          export BUNDLE_FORCE_RUBY_PLATFORM=true
          export BUNDLE_PATH=vendor/bundle
          bundle lock --update
        '';
        bundleExec = pkgs.writeShellScriptBin "bundle-exec" ''
          export BUNDLE_FORCE_RUBY_PLATFORM=true
          export BUNDLE_PATH=vendor/bundle
          bundle exec jekyll serve --livereload
        '';
      in
      rec {
        inherit
          (rubyNix {
            inherit gemset ruby;
            name = "SN1-Notes";
            gemConfig = pkgs.defaultGemConfig // gemConfig;
          })
          env
          ;

        devShells = rec {
          default = dev;
          dev = pkgs.mkShell {
            buildInputs =
              [
                env
                bundixcli
                bundleLock
                bundleUpdate
                bundleExec
              ]
              ++ (with pkgs; [
                yarn
                rufo
                # more packages here
              ]);
          };
        };
      }
    );
}
