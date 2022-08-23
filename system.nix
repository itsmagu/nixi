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

  time.timeZone = "Europe/Oslo";
  i18n.defaultLocale = "en_US.utf8";
  services.xserver = {
    layout = "se";
    xkbVariant = "";
  };
    
}