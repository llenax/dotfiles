{
  imports = [
    ./modules
    ./home-packages.nix
  ];

  home = {
    username = "berke";
    homeDirectory = "/home/berke";
    stateVersion = "24.11";
  };
}
