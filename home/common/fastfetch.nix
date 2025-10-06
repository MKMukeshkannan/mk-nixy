let 
    colors = "{#39}  {#34}  {#36}  {#35}  {#34}  {#33}  {#32}  {#31} ";
in
{
    programs.fastfetch.enable = true;
    programs.fastfetch.settings = {
        "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
        "logo" = {
            "source" = "${../../resources/mio.png}";
            "type" = "kitty-direct";
            "height" = 18;
            "width" = 24;
            "padding" = {
                "top" = 2;
            };
        };
        "display" = {
            "separator" = " ";
        };
        "modules" = [
            "break"
            "break"
            "break"
            {
                "type" = "custom";
                "format" = colors;
            }
            "break"
            {
                "type" = "title";
                "keyWidth" = 10;
            }
            "break"
            {
                "type" = "os";
                "key" = " ";
                "keyColor" = "34";
            }
            {
                "type" = "kernel";
                "key" = " ";
                "keyColor" = "34";
            }
            {
                "type" = "packages";
                "format" = "{} (pacman)";
                "key" = " ";
                "keyColor" = "34";
            }
            {
                "type" = "shell";
                "key" = " ";
                "keyColor" = "34";
            }
            {
                "type" = "terminal";
                "key" = " ";
                "keyColor" = "34";
            }
            {
                "type" = "wm";
                "key" = " ";
                "keyColor" = "34" ;
            }
            {
                "type" = "cursor";
                "key" = " ";
                "keyColor" = "34";
            }
            {
                "type" = "terminalfont";
                "key" = " ";
                "keyColor" = "34";
            }
            {
                "type" = "uptime";
                "key" = " ";
                "keyColor" = "34";
            }
            {
                "type" = "datetime";
                "format" = "{1}-{3}-{11}";
                "key" = " ";
                "keyColor" = "34"; 
            }
            {
                "type" = "media";
                "key" = "󰝚 ";
                "keyColor" = "34";
            }
            {
                "type" = "player";
                "key" = " ";
                "keyColor" = "34";
            }
            "break"
            {
                "type" = "custom";
                "format" = colors;
            }
            "break"
            "break"
        ];
    };

}
