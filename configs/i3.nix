{pkgs, lib, ...}:

{
  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;
    
    config = rec {
      modifier = "Mod4";

      window.border = 0;

      gaps = {
        inner = 10;
	outer = 5;
      };

      keybindings = lib.mkOptionDefault {
	"${modifier}+Return" = "exec ${pkgs.alacritty}/bin/alacritty";
	"${modifier}+Shift+b" = "exec ${pkgs.firefox}/bin/firefox --new-windows";
	"${modifier}+Shift+f" = "exec ${pkgs.xfce.thunar}/bin/thunar";
      };

      startup = [
	{ 
	  command = "exec i3-msg workspace 1";
	  always = true;
	  notification = false;
	}
	{ 
	  command = "${pkgs.feh}/bin/feh --bg-scale $HOME/Downloads/malenia.jpg";
	  always = true;
	  notification = false;
	}
      ];
    };
  };
}
