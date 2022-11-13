return require('packer').startup(function(use)
  -- Packer so it can manage its own updates etc.
  use 'wbthomason/packer.nvim'
  
  -- LSP
  use 'neovim/nvim-lspconfig' -- Default configs
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp

  -- Theme
  use 'ellisonleao/gruvbox.nvim' -- gruvbox lua port

  -- Miscellaneous
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0', -- suggested to use latest release tag rather than master
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { -- native fzf for telescope to make it faster
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  }
end)
