{ config, pkgs, ... }:

{ imports = [ 
    ./packagebundles/common.nix
    ./packagebundles/fish.nix
    ];
}