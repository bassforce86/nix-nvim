{
  plugins.nvim-tree = {
    enable = true;
    disableNetrw = true;
    hijackNetrw = false;
    openOnSetup = true;
    view = {
      width = {
        min = 30;
        max = -1;
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ft";
      options = {
        desc = "[F]ile [T]ree";
      };
      action = "<cmd>lua require('nvim-tree.api').tree.toggle({ focus = false })<cr>";
    }
  ];
}
