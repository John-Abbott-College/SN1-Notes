#!/usr/bin/env bash
# Adapted from https://woutswinkels.github.io/posts/Run-Jekyll-locally-on-NixOS/

nix-shell -p bundler bundix --run 'bundle config set --local force_ruby_platform true; bundler update; bundler lock; bundler package --no-install --path vendor; bundix; rm -rf vendor'
