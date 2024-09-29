{
  description = "Bob's Big Fat Flakey Sausage";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    lix-module = {
      url = "https://git.lix.systems/lix-project/nixos-module/archive/2.91.0.tar.gz";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nur.url = "github:nix-community/NUR";
    pre-commit-hooks-nix = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    systems.url = "github:nix-systems/x86_64-linux";
  };

  outputs = inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;} {
      imports = [
        inputs.pre-commit-hooks-nix.flakeModule
        ./home-manager
        ./lib
        ./nixos
        ./parts
        ./config
      ];

      flake = {config, ...}: {
        nixosConfigurations = {
          desktop = inputs.self.lib.mkLinuxSystem [
            ./systems/desktop
            ./profiles/user0
            config.nixosModules.desktop
            inputs.home-manager.nixosModules.home-manager
            inputs.nur.nixosModules.nur
            inputs.lix-module.nixosModules.default
          ];
        };
      };

      systems = import inputs.systems;
    };
}
