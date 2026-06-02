{ lib, ... }:

{

  options =
    with lib;
    with types;
    {
      thattem.secrets.nix-configurations.path = mkOption {
        type = nullOr str;
        default = null;
      };
    };

}
