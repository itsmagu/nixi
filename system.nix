{ config, pkgs, ... }:

{
    users.users.hernet = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      packages = with pkgs; [
        vim
        alacritty
      ];
    };

    environment.systemPackages = with pkgs; [
      git
      wget
    ];
}