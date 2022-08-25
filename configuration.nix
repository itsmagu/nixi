{ config, pkgs, ... }:

{ imports = [
    ./hardware-configuration.nix
    ./lowsystem.nix
    ./system.nix
    ./software.nix
    ./net.nix
  ];
  nixpkgs.config.allowUnfree = true;
  system.copySystemConfiguration = true;
  system.stateVersion = "22.05";
}