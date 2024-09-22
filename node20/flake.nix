{
  description = "A flake with node";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  outputs = { nixpkgs, ... }: let
    system = "aarch64-darwin";
    pkgs = import nixpkgs { inherit system; };
  in {
    devShell.${system} = with pkgs; mkShell {
      buildInputs = [ nodejs_20 ];
      shellHook = ''
        echo "node `${nodejs_20}/bin/node --version`"
      '';
    };
  };
}
