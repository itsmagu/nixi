{ config, pkgs, ... }:

{
  boot.initrd.availableKernelModules = [ "sd_mod" "sr_mod" ];
  boot.initrd.kernelModules = [ "hv_vmbus" "hv_storvsc" ];
  boot.kernelModules = [ ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/b4daf34c-236f-43af-8a1b-2389765ba824";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/0E17-4F0B";
      fsType = "vfat";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/054240bc-70ee-46fe-ba24-0204f1b8d991"; }
    ];

  networking.useDHCP = lib.mkDefault true;

  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
  virtualisation.hypervGuest.enable = true;
  boot.kernel.sysctl."vm.overcommit_memory" = "1";
}