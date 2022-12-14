{ config, pkgs, ... }:

{
  users.users = {
    root = {
      shell = pkgs.fish;
    };
    user = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      shell = pkgs.fish;
      password = "admin";
      home = "/home/user";
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
  #services.xserver = {
  #  layout = "se";
  #  xkbVariant = "";
  #};
}