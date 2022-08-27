{ config, pkgs, ... }:

{
    networking = {
        hostName = "NixosHost";
        networkmanager.enable = true;
        firewall = {
            enable = true;
            allowPing = false;
        };
    };
}