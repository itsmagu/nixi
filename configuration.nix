{ config, pkgs, ... }:

{ imports = [
    ./hardware-configuration.nix
    ./lowsystem.nix
    ./system.nix
    ./userspace.nix
    ./software.nix
    ./net.nix
  ];
  system.copySystemConfiguration = true;
  system.stateVersion = "22.05";
}