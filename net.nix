{ config, pkgs, ... }:

{
    networking = {
        hostName = "ViSuDevice";
        firewall = {
            enable = true;
            allowPing = false;
        };
    };
}