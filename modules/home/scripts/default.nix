{pkgs, ...}: let
  toggle_blur = pkgs.writeScriptBin "toggle_blur" (builtins.readFile ./scripts/toggle_blur.sh);
  toggle_opacity = pkgs.writeScriptBin "toggle_opacity" (builtins.readFile ./scripts/toggle_opacity.sh);

  maxfetch = pkgs.writeScriptBin "maxfetch" (builtins.readFile ./scripts/maxfetch.sh);

  show-keybinds = pkgs.writeScriptBin "show-keybinds" (builtins.readFile ./scripts/keybinds.sh);

  vm-start = pkgs.writeScriptBin "vm-start" (builtins.readFile ./scripts/vm-start.sh);
in {
  home.packages = with pkgs; [
    toggle_blur
    toggle_opacity

    maxfetch

    show-keybinds

    vm-start
  ];
}
