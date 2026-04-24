{ lib, ... }:

{

  options =
    with lib;
    with types;
    {
      thattem-packages = {
        python-lsp = mkOption {
          type = nullOr package;
          default = null;
        };
        stardicts = mkOption {
          type = nullOr package;
          default = null;
        };
        wallpapers = mkOption {
          type = nullOr package;
          default = null;
        };
      };
    };

}
