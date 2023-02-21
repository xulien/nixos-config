{ pkgs, ... }:

{
    environment.etc."inputrc" = {
        text = pkgs.lib.mkDefault( pkgs.lib.mkAfter ''
          #  alternate mappings for "page up" and "page down" to search the history
          "\e[A": history-search-backward
          "\e[B": history-search-forward
          "\e[C": forward-char
          "\e[D": backward-char
          '');
      };
}