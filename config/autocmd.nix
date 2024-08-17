{
  # https://nix-community.github.io/nixvim/NeovimOptions/autoGroups/index.html
  autoGroups = {
    kickstart-highlight-yank = {
      clear = true;
    };
    terminal = {
      clear = true;
    };
    helm = {
      clear = true;
    };
  };

  # [[ Basic Autocommands ]]
  # https://nix-community.github.io/nixvim/NeovimOptions/autoCmd/index.html
  autoCmd = [
    {
      event = [ "TextYankPost" ];
      desc = "Highlight when yanking (copying) text";
      group = "kickstart-highlight-yank";
      callback.__raw = ''
        function()
          vim.highlight.on_yank()
        end
      '';
    }
    {
      event = [ "TermOpen" ];
      desc = "Start Terminal in Insert mode";
      group = "terminal";
      command = "startinsert";
      pattern = [ "*" ];
    }
    {
      event = [ "TermOpen" ];
      desc = "Start Terminal without number column";
      group = "terminal";
      command = "setlocal nonumber";
      pattern = [ "*" ];
    }
    {
      event = [ "TermOpen" ];
      desc = "Start Terminal without relative number column";
      group = "terminal";
      command = "setlocal norelativenumber";
      pattern = [ "*" ];
    }
    {
      event = [ "TermEnter" ];
      desc = "Start Terminal without the sign column";
      group = "terminal";
      command = "setlocal signcolumn=no";
      pattern = [ "*" ];
    }
    {
      event = [ "BufWinEnter" "WinEnter" ];
      desc = "Start Terminal in Insert mode from anywhere";
      group = "terminal";
      command = "startinsert";
      pattern = [ "term://*" ];
    }
    {
      event = [ "BufLeave" ];
      desc = "Leave Terminal and stop Insert mode from anywhere";
      group = "terminal";
      command = "stopinsert";
      pattern = [ "term://*" ];
    }
    {
      event = [ "BufNewFile" "BufRead" ];
      desc = "Esnure Helm LSP loads before Yaml LSP";
      group = "helm";
      pattern = [ "*/templates/*.yaml" "*/templates/*.tpl" "*.gotmpl" "helmfile*.yaml" ];
      callback.__raw = ''
        function()
          vim.opt_local.filetype = "helm"  
        end
      '';
    }
  ];

}
