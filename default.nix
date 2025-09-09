# Adapted from https://matthewrhone.dev/jekyll-in-nixos

with import <nixpkgs> { };

let jekyll_env = bundlerEnv rec {
    name = "jekyll_env";
    inherit ruby;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
  };
in
  stdenv.mkDerivation rec {
    name = "SN1-Notes";
    buildInputs = [ jekyll_env ruby ];

    shellHook = ''
      exec ${jekyll_env}/bin/jekyll serve --watch
    '';
  }
