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
    ranger
    zathura

    firefox
    thunderbird
    xfce.thunar

    # Languages
    gcc
    rustup
    go
    gopls
    gotools

    # Text editors
    neovim
    helix

    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ];

  fonts.fontconfig.enable = true;
}
