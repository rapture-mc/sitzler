_:

{
  imports = [
    ./shared-configuration.nix
  ];

  networking.hostName = "STZLR-DWN-ZB01"; # Define your hostname.

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
