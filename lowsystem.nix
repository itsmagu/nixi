{ config, pkgs, ... }:

{
    boot.plymouth = {
        enable = false;
    };


    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
    
}