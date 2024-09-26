{
  description = "/dev";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }: flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShells.default = import ./develop.nix { inherit pkgs; };
    
      # apps = {
      #   workspace = flake-utils.lib.mkApp {
      #     drv = pkgs.writeShellScriptBin "find workspaces" ''
      #       find . | rg code-workspace | cursor $(fzf) 
      #     '';
      #   };
      # };

      packages = {
        default = pkgs.writeShellScriptBin "default" ''
          echo "This is the default package"
        '';
      };

      defaultPackage = self.packages.${system}.default;
      # defaultApp = self.apps.${system}.workspace;
    }
  );
}