{ lib, ... }:

{

  options =
    let
      inherit (lib) mkOption;
      inherit (lib.types) attrsOf package;
    in
    {
      thattem.packages = mkOption {
        type = attrsOf package;
        default = { };
      };
    };

}
