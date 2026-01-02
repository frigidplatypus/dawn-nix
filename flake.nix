{
  description = "Dawn - A distraction-free writing environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      forEachSystem = nixpkgs.lib.genAttrs [ "x86_64-linux" "aarch64-darwin" ];
      mkDawn = { system }:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        pkgs.stdenv.mkDerivation rec {
          pname = "dawn";
          version = "0.1.3";

        src = pkgs.fetchFromGitHub {
          owner = "andrewmd5";
          repo = "dawn";
          rev = "v${version}";
          sha256 = "sha256-A3wsBHrlW7sKmDtDrmmToNTtPHekbNk/wii9fjdZgcM=";
          fetchSubmodules = true;
        };

        nativeBuildInputs = with pkgs; [
          gnumake
          cmake
        ];

        buildInputs = with pkgs; [
          curl
        ];

        buildPhase = ''
          make
        '';

        installPhase = ''
          mkdir -p $out/bin
          cp dawn $out/bin/
        '';
        };
    in
    {
      packages = forEachSystem (system: {
        default = mkDawn { inherit system; };
      });
    };
}