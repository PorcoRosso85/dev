{
  description = "My Neovim flake";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-darwin"; # Or whatever system you are on
      pkgs = import nixpkgs { inherit system; };

      # database = import ./database.nix { inherit pkgs; };
    in
    {
      packages.${system}.default = pkgs.mkShell {
        buildInputs = [
          pkgs.rustup
        ];

        shellHook = ''
          echo "rust"

        '';

      };
    };
}
