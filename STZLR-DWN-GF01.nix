_:

{
  imports = [
    ./shared-configuration.nix
  ];

  networking.hostName = "STZLR-DWN-GF01"; # Define your hostname.

  megacorp.services.grafana = {
    enable = true;
    logo = true;
  };
}
