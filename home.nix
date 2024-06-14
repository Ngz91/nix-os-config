{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "ngz91";
  home.homeDirectory = "/home/ngz91";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.
  home.enableNixpkgsReleaseCheck = false;

  imports = [ ./configs/main.nix ./packages/main.nix ];

  programs.git = {
    enable = true;
    userName = "Nevio Gomez";
    userEmail = "neviogomez91@gmail.com";
  };

  programs.helix = {
    enable = true;
    settings = {
      theme = "jellybeans";
      editor.cursor-shape = {
        normal = "block";
        insert = "bar";
        select = "underline";
      };
    };
    languages.language = [
      {
        name = "nix";
        auto-format = true;
        formatter.command = "${pkgs.nixfmt}/bin/nixfmt";
      }
      {
        name = "go";
        auto-format = true;
      }
    ];
  };

  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    oh-my-zsh = {
      enable = true;
      theme = "alanpeabody";
      plugins = [ "git" "npm" "history" "node" "rust" "deno" ];
    };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
