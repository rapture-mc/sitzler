{pkgs, ...}:

{
  imports = [
    ./shared-configuration.nix
  ];

  networking.hostName = "STZLR-DWN-ZB01"; # Define your hostname.

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  services.zabbixServer.package = pkgs.zabbix70.server-pgsql;

  megacorp = {
    config = {
      nixvim.enable = true;
      packages.enable = true;
      users = {
        enable = true;
        admin-user = "sitzler";
      };
    };

    services.zabbix = {
      agent.enable = true;

      server.enable = true;
    };
  };
}
