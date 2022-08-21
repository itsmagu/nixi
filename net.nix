{ config, pkgs, ... }:

{
    networking = {
        hostName = "ViSuDevice";
        networkmanager.enable = true;
        firewall = {
            enable = true;
            allowPing = false;
        };
    };
}