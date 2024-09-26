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
      # nix develop
      devShells.default = import ./develop.nix { inherit pkgs; };
      packages = {
        default = pkgs.writeShellScriptBin "default" ''
          echo "This is the default package"
        '';
      };
      defaultPackage = self.packages.${system}.default;

      # nix run
      apps.webServer = flake-utils.lib.mkApp {
        drv = pkgs.writeShellScriptBin "webServer" ''
          #!/usr/bin/env bash
          echo "Starting web server"
          python3 -m http.server 8080
        '';
      };
      defaultApp = self.apps.${system}.webServer;
    }
  );
}