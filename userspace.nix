{ config, pkgs, ... }:

{
  services.xserver = {
  enable = true;

  displayManager = {
    lightdm.enable = true;
    lightdm.greeter.enable = false; 
    #lightdm.background = ""
    lightdm.autoLogin.timeout = 0;
    autoLogin.enable = true;
    autoLogin.user = "magu";
    defaultSession = "none+awesome";
  };
  
  windowManager.awesome = {
    enable = true;
    luaModules = with pkgs.luaPackages; [
      luarocks
      luadbi-mysql
    ];
  };
};
}