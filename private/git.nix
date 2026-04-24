{ lib, ... }:

{

  options =
    with lib;
    with types;
    {
      private.git = {
        userName = mkOption {
          type = str;
          default = "";
        };
        userEmail = mkOption {
          type = str;
          default = "";
        };
        githubUser = mkOption {
          type = str;
          default = "";
        };
      };
    };

}
