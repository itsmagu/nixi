{ config, pkgs, ... }:

{
    boot.plymouth = {
        enable = false;
    };

    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
    
    services.xserver = {
        enable = true;
        videoDrivers = [
          "nouveau"
          "nvidia"
          "amdgpu"
          "radeon"
          "nvidiaLegacy390"
        ];
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

    boot.loader = {
      timeout = 2;
      grub = {
        gfxmodeBios = "auto";
        gfxmodeEfi = "auto";
      };
    };
}