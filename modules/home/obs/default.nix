{
  pkgs,
  lib,
  inputs,
  ...
}: {
  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [
      advanced-scene-switcher
      obs-pipewire-audio-capture
      #obs-backgroundremoval
      wlrobs
    ];
  };
}
