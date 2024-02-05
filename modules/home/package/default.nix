{ inputs, pkgs, ... }:
{
  home.packages = (with pkgs; [
    helix
    eza                               # ls replacement
    entr                              # perform action when file change
    file                              # Show file information
    lsof
    fzf                               # fuzzy finder
    go
    sanoid

    nixfmt
    nix-du
    nix-tree
    nix-index
    nvd

    lazygit
    gitui
    direnv
    tokei
    jq
    meld

    libreoffice
    remmina
    xfce.thunar
    nitch                             # system fetch util
    nix-prefetch-github
    ripgrep                           # grep replacement

    nmap
    wireshark
    wol
    wakeonlan
    dig
    transmission-qt

    soundwireserver                   # pass audio to android phone
    spotify
    todo                              # cli todo list
    taskwarrior
    joplin-desktop

    yazi                              # terminal file manager
    gnome.zenity

    # C / C++
    gcc
    gnumake
    openssl

    rustup
    dotnet-sdk_8

    bleachbit                         # cache cleaner
    gparted                           # partition manager
    gptfdisk
    sqlite
    bitwarden
    ffmpeg-full
    mpv                               # video player
    vlc
    imv                               # image viewer
    libnotify
	  man-pages					            	  # extra man pages
    ncdu                              # disk space
    pamixer                           # pulseaudio command line mixer
    pavucontrol                       # pulseaudio volume controle (GUI)
    playerctl                         # controller for media players
    qalculate-gtk                     # calculator
    unzip
    wget
    xdg-utils
    inputs.alejandra.defaultPackage.${system}
  ]);
}
