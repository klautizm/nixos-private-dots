{ pkgs, pkgs2, spkgs, inputs, ... }: {

  # fonts
fonts.packages = with pkgs; [
  noto-fonts
  noto-fonts-cjk-sans
  noto-fonts-color-emoji
  liberation_ttf
  fira-code
  fira-code-symbols  
  dina-font
  proggyfonts
  corefonts
  vista-fonts
];

  #network manager
  networking.networkmanager.enable = true;

  #niri and ly
  services.displayManager.ly.enable = true;
  programs.niri.enable = true;

  #steam

  #zsh
  programs.zsh.enable = true;

  #steam
  programs.steam = {
    enable = true;
    dedicatedServer.openFirewall = true;
  };

  #xwayland
  programs.xwayland.enable = true;
  services.xserver.enable = true;

  #gamemode
  programs.gamemode.enable = true;

environment.systemPackages = with pkgs; [

    #system pakages
    alacritty
    wget
    curl
    git
    nautilus
    wlr-randr

    #basic
    firefox
        

    #fun
    fastfetch
    asciiquarium

    #niri
    swaybg
    fuzzel
    waybar
    xwayland-satellite
    
  ];
}
