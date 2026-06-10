{ lib, ... }:

{

  options =
    let
      inherit (lib) mkOption;
      inherit (lib.types) nullOr str;
    in
    {
      thattem.secrets.nix-serve-key.path = mkOption {
        type = nullOr str;
        default = null;
      };
    };

}
