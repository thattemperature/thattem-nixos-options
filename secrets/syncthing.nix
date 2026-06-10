{ lib, ... }:

{

  options =
    let
      inherit (lib) mkOption;
      inherit (lib.types) nullOr str;
    in
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
