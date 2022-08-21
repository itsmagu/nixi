{ config, pkgs, ... }:

{
    users.users.hernet = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      packages = with pkgs; [
        vim
      ];
    };

    environment.systemPackages = with pkgs; [
      git
      wget
    ];
}