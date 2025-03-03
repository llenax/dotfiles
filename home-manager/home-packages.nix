{ pkgs, pkgs-unstable, inputs, system, ... }: {
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    #apps
    mpv
    vlc
    aseprite
    anydesk
    shutter
    lxappearance
    qt6ct

    #ai
    lmstudio

    #games
    prismlauncher

    #game-engines
    godot_4

    #social
    element-desktop

    #browsers
    inputs.zen-browser.packages."${system}".beta

    #text-editors
    jetbrains.pycharm-community

    # #kde
    # krdc  # remote desktop
    # kara    # pager widget

    #dev
    gnumake
    gcc
    nodejs
    stdenv.cc.cc.lib
    devenv

    #virtualization
    arion

    #cli
    wget
    git-lfs
    fastfetch
    htop
    btop
    unzip
    zip
    yt-dlp
    ripgrep
    lm_sensors
    lshw
    hdparm
    brightnessctl

    #sound
    pasystray
    pavucontrol
    pamixer
    playerctl

    #network
    nm-tray
    
    #file manager
    pcmanfm-qt

    #fonts
    (nerdfonts.override {
      fonts = [ "FiraCode" "DroidSansMono" "Hermit" ];
    })

  ] ++ (with pkgs-unstable; [
    #terminals
    # ghostty
    
    #text-editors
    zed-editor
    
  ]);
}
