{
  description = "A flake with a jdk";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  outputs = { nixpkgs, ... }: let
    system = "aarch64-darwin";
    pkgs = import nixpkgs { inherit system; };
  in {
    devShell.${system} = with pkgs; mkShell {
      buildInputs = [ jdk21_headless gradle maven ];
      shellHook = ''
        ${jdk21_headless}/bin/java -version
      '';
    };
  };
}
