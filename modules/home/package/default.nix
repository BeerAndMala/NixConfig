{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    helix
    eza # ls replacement
    yazi # file manager
    #gobang db management
    lnav # log file navigator
    entr # perform action when file change
    file # Show file information
    lsof
    fzf # fuzzy finder
    unzip
    wget
    acpi
    bc
    killall
    imagemagick
    sanoid
    nushell
    powershell

    awscli2
    kops
    kubectl
    kubernetes-helm
    lens

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
    bottom

    bitwarden
    libreoffice
    remmina
    xfce.thunar
    gnome.zenity
    gtk3
    gimp
    inkscape
    swappy
    input-leap
    slack-dark
    joplin-desktop
    telegram-desktop
    tor-browser
    audacity

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
    spotify-player

    # C / C++
    gcc
    gnumake
    openssl
    lldb

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
