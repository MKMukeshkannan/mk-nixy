{
  description = "MK-NIX";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin = {
      url = "github:nix-darwin/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim.url = "github:MKMukeshKannan/mk-nixvim";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      nix-darwin,
      home-manager,
      nixvim,
      ...
    }@inputs:
    {
      nixosConfigurations."cerberus" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          ./common
          ./cerberus
        ];
      };

      darwinConfigurations."primmac" = nix-darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        specialArgs = { inherit inputs; };
        modules = [
          ./common
          ./darwin

          home-manager.darwinModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit inputs; };
            home-manager.users.mukeshkannan.imports = [
              self.homeModules.common
              self.homeModules.darwin
            ];
          }
        ];
      };

      homeModules = {
        common = import ./home/common;
        linux = import ./home/linux;
        darwin = import ./home/darwin;
      };
    };
}
