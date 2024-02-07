{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    helix
    eza # ls replacement
    entr # perform action when file change
    file # Show file information
    lsof
    fzf # fuzzy finder
    unzip
    wget
    acpi
    sanoid
    nushell

    nixfmt
    nix-du
    nix-tree
    nix-index
    nix-prefetch-github
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
    gnome.zenity
    joplin-desktop
    bitwarden

    nmap
    wireshark
    wol
    wakeonlan
    dig
    transmission-qt

    soundwireserver # pass audio to android phone
    spotify
    pamixer # pulseaudio command line mixer
    pavucontrol # pulseaudio volume controle (GUI)
    playerctl # controller for media players
    ffmpeg-full
    mpv # video player
    vlc
    imv # image viewer

    yazi # terminal file manager
    todo # cli todo list
    taskwarrior
    nitch # system fetch util
    neofetch
    ripgrep # grep replacement

    # C / C++
    gcc
    gnumake
    openssl

    go
    rustup
    dotnet-sdk_8

    bleachbit # cache cleaner
    gparted # partition manager
    gptfdisk
    sqlite

    libnotify
    xdg-utils
    man-pages # extra man pages
    ncdu # disk space
    qalculate-gtk # calculator
    inputs.alejandra.defaultPackage.${system}
  ];
}
