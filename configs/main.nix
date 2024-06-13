{ config, pkgs, lib, ... }:

{
  imports = [ ./i3.nix ./alacritty.nix ];

  xsession.enable = true;
}
