{
  plugins.trouble = {
    enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>tb";
      options = {
        desc = "[T]rouble [B]uffer Diagnostics";
      };
      action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>";
    }
    {
      mode = "n";
      key = "<leader>td";
      options = {
        desc = "[T]rouble [D]iagnostics";
      };
      action = "<cmd>Trouble diagnostics toggle<cr>";
    }
    {
      mode = "n";
      key = "<leader>tq";
      options = {
        desc = "[T]rouble [Q]uickfix list";
      };
      action = "<cmd>Trouble qflist toggle<cr>";
    }
    {
      mode = "n";
      key = "<leader>ts";
      options = {
        desc = "[T]rouble [S]ymbols";
      };
      action = "<cmd>Trouble symbols toggle focus=false<cr>";
    }
    {
      mode = "n";
      key = "<leader>tl";
      options = {
        desc = "[T]rouble [L]ocation list";
      };
      action = "<cmd>Trouble loclist toggle<cr>";
    }
    {
      mode = "n";
      key = "<leader>tw";
      options = {
        desc = "[T]rouble [W]orkspace (LSP)";
      };
      action = "<cmd>Trouble lsp toggle focus=false win.position=right<cr>";
    }
    {
      mode = "n";
      key = "<leader>tn";
      options = {
        desc = "[T]rouble [N]otes";
      };
      action = "<cmd>Trouble todo toggle<cr>";
    }
  ];
}
