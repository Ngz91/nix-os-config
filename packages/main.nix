{pkgs, ...}:

with pkgs;

{
  home.packages = with pkgs; [
    alacritty
    htop
    feh
    lazygit
    curl
    neofetch

    firefox
    thunderbird
    xfce.thunar
  ];	
}
