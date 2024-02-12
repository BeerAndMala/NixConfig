{...}: {
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        dpi-aware = "no";
        icon-theme = "Papirus-Dark";
        width = 25;
        font = "JetBrainsMono Nerd Font:weight=bold:size=8";
        fields = "name,generic,comment,categories,filename,keywords";
        terminal = "kitty";
        prompt = "❯   ";
        layer = "overlay";
      };

      colors = {
        background = "1e1e2eff";
        selection = "585b7099";
        border = "b4befeff";
        text = "cdd6f4ff";
        selection-text = "cdd6f4ff";
        match = "b4befeff";
        selection-match = "b4befeff";
      };

      border = {
        radius = 20;
      };
      dmenu = {
        exit-immediately-if-empty = "yes";
      };
    };
  };
}
