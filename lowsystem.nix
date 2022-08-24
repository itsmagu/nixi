{ config, pkgs, ... }:

{
    boot.plymouth = {
        enable = false;
    };

    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
    
    services.xserver = {
        enable = true;
        displayManager = {
          lightdm.enable = true;
          lightdm.greeter.enable = true; 
          #lightdm.background = ""
          lightdm.autoLogin.timeout = 0;
          autoLogin.enable = false;
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