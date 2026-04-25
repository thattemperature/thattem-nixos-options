{ lib, ... }:

{

  options =
    with lib;
    with types;
    {
      thattem.secrets.authinfo.path = mkOption {
        type = nullOr str;
        default = null;
      };
    };

}
