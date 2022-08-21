{ config, pkgs, ... }:

{
    users.users.hernet = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      packages = with pkgs; [
        neovim
      ];
    };

    environment.systemPackages = with pkgs; [
      vim
      git
      ranger
      wget
    ];
}