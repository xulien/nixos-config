{ pkgs, ... }:

{
	programs.neovim = {
	  enable = true;
	  viAlias = true;
	  vimAlias = true;
	  configure = {
	    customRC = ''
	      set number
	      set cc=160
	      if &diff
		    colorscheme blue
	      endif
	    '';
	    packages.myVimPackage = with pkgs.vimPlugins; {
	      start = [ vim-nix ];
	    };
	  };
	};
}
