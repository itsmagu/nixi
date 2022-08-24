{ config, pkgs, ... }:

{
  users.users.magu = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      alacritty
      firefox
    ];
    shell = pkgs.fish;
  };

  environment.systemPackages = with pkgs; [
    vim
    git
    wget
    ranger
  ];

  time.timeZone = "Europe/Oslo";
  i18n.defaultLocale = "en_US.utf8";
  services.xserver = {
    layout = "se";
    xkbVariant = "";
  };
}