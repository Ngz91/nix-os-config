{ pkgs, lib, ... }:

{
  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;

    config = rec {
      modifier = "Mod4";

      window.border = 1;

      gaps = {
        inner = 10;
        outer = 0;
      };

      keybindings = lib.mkOptionDefault {
        "${modifier}+Return" = "exec ${pkgs.alacritty}/bin/alacritty";
        "${modifier}+Shift+b" =
          "exec ${pkgs.firefox}/bin/firefox --new-windows";
        "${modifier}+Shift+f" = "exec ${pkgs.xfce.thunar}/bin/thunar";
        "${modifier}+Shift+v" =
          "exec ${pkgs.alacritty}/bin/alacritty -e ranger";
      };

      startup = [
        {
          command = "exec xrandr --output Virtual-1 --mode 1920x1080";
          always = true;
          notification = false;
        }
        {
          command = "exec i3-msg workspace 1";
          always = true;
          notification = false;
        }
        {
          command =
            "${pkgs.feh}/bin/feh --bg-scale $HOME/Downloads/purple-anime.jpg";
          always = true;
          notification = false;
        }
      ];
    };
  };
}
