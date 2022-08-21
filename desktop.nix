{ config, pkgs, ... }:

{
    services.xserver = {
    enable = true;
  
    displayManager = {
        lightdm.enable = true;
        lightdm.greeter.enable = false; 
        #lightdm.background = ""
        lightdm.autoLogin.timeout = 0;
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