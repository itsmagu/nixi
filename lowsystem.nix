{ config, pkgs, ... }:

{
    boot.plymouth = {
        enable = true;
    };

    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
    networking.hostName = "nixos";
    networking.networkmanager.enable = true;
    
}