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

    hardware.opengl.enable = true;

    boot.loader = {
      timeout = 2;
      grub = {
        gfxmodeBios = "auto";
        gfxmodeEfi = "auto";
      };
    };
}