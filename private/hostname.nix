{ lib, ... }:

{

  options =
    let
      inherit (lib) mkOption;
      inherit (lib.types) str;
    in
    {
      thattem.private.hostname = mkOption {
        type = str;
        default = "nixos";
      };
    };

}
