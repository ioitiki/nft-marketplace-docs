{
  description = "A flake for gitbook-cli";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
        nodejs = pkgs.nodejs-14_x;
        gitbookEnv = pkgs.callPackage ./gitbook-cli-nix {
          inherit nodejs;
        };
      in
      {
        devShell = pkgs.mkShell {
          buildInputs = [ gitbookEnv ];
        };
      }
    );
}
