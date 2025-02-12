{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";

    megacorp = {
      url = "github:rapture-mc/nixos-module";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, megacorp, ... }: let 
    lib = nixpkgs.lib;
  in {
    nixosConfigurations = {
      STZLR-DWN-ZB01 = lib.nixosSystem {
        modules = [
          megacorp.nixosModules.default
          ./STZLR-DWN-ZB01.nix
          ./hardware-configuration.nix
        ]; 
      };  
      STZLR-DWN-GF01 = lib.nixosSystem {
        modules = [
          megacorp.nixosModules.default
          ./STZLR-DWN-GF01.nix
          ./hardware-configuration.nix
        ]; 
      };  
    };
  };
}
