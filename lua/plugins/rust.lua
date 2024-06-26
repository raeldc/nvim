return {
  {
    "rust-lang/rust.vim",
    ft = "rust",
    event = "BufWinEnter",
    config = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
   "neovim/nvim-lspconfig",
    config = function()
       require("nvchad.configs.lspconfig").defaults()
       require "configs.lspconfig"
     end,
  }, 
  {
  "williamboman/mason.nvim",
   	opts = {
   		ensure_installed = {
   			"lua-language-server", "stylua",
   			"html-lsp", "css-lsp" , "prettier"
   		},
   	},
  },
  { 'williamboman/mason-lspconfig.nvim'},
  { 'mfussenegger/nvim-dap'},
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css", "pyright",
        "tsserver", 
      },
    },
  },
  {
    "mrcjkb/rustaceanvim",
    version = '^4',
    lazy = false
  }
}
