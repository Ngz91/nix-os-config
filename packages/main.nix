{ pkgs, ... }:

with pkgs;

{
  home.packages = with pkgs; [
    alacritty
    htop
    feh
    lazygit
    curl
    neofetch
    zip
    unzip

    firefox
    thunderbird
    xfce.thunar

    # Text editors
    neovim
    helix
  ];
}
