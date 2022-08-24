{ config, pkgs, ... }:

{
  users.users = {
    root = {
      home = "/home/alice";
      shell = pkgs.fish;
    };
    magu = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      packages = with pkgs; [
        alacritty
        firefox
      ];
      shell = pkgs.fish;
      password = "admin";
      home = "/home/magu";
    };
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