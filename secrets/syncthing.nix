{ lib, ... }:

{

  options =
    with lib;
    with types;
    {
      thattem.secrets.syncthing = {
        key.path = mkOption {
          type = nullOr str;
          default = null;
        };
        cert.path = mkOption {
          type = nullOr str;
          default = null;
        };
      };
    };

}
