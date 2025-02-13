{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";

    megacorp = {
      url = "github:rapture-mc/nixos-module";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, megacorp, ... }: let 
    inherit (nixpkgs.lib)
      nixosSystem
      ;
  in {
    nixosConfigurations = {
      STZLR-DWN-ZB01 = nixosSystem {
        modules = [
          megacorp.nixosModules.default
          ./STZLR-DWN-ZB01-configuration.nix
          ./STZLR-DWN-ZB01-hardware-configuration.nix
        ]; 
      };  
      STZLR-DWN-GF01 = nixosSystem {
        modules = [
          megacorp.nixosModules.default
          ./STZLR-DWN-GF01-configuration.nix
          ./STZLR-DWN-GF01-hardware-configuration.nix
        ]; 
      };  
    };
  };
}
