{
  description = "GNG is the successor of gdub. It keeps the original gw command and with more features.";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs;
    flake-utils.url = github:numtide/flake-utils;
  };

  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in rec {
        gng = pkgs.stdenvNoCC.mkDerivation rec {
          name = "gng";
          src = pkgs.fetchFromGitHub {
            owner = "gdubw";
            repo = "gng";
            rev = "v1.0.5";
            sha256 = "sha256-CiJG3jN5a2Ph+kV7lO2gUgBQbJMzgGY5lNmJh8CaEJk=";
          };
          dontBuild = true;
          installPhase = ''
            mkdir -p $out
            cp -r $src/* $out
          '';
        };
        devShells.default = pkgs.mkShell {
          packages = [ gng ];
        };
      }
    );
}