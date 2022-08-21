{ config, pkgs, ... }:

{	imports =
  [ 
  	./hardware.nix
  	./lowsystem.nix
  	./system.nix
  	./software.nix
  	./net.nix
  	./desktop.nix
  ];
  system.copySystemConfiguration = true;
  system.stateVersion = "22.05";
}