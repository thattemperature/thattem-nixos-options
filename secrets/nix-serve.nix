{ lib, ... }:

{

  options =
    with lib;
    with types;
    {
      thattem.secrets.nix-serve-key.path = mkOption {
        type = nullOr str;
        default = null;
      };
    };

}
