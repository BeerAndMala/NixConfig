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
        background = "282a36fa";
        selection = "3d4474fa";
        border = "fffffffa";
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
