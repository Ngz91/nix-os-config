{config, pkgs, lib, ...}:

{
  imports = [
    ./i3.nix
  ];
  
  xsession.enable = true;
}
