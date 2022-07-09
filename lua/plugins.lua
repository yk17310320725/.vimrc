require('packer').startup({
  function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')
    --------------------- colorschemes --------------------
    use('gruvbox-community/gruvbox')
    --------------------- plugins -------------------------
    use({ 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' })

    use({ 'akinsho/bufferline.nvim', tag = 'v2.*', requires = 'kyazdani42/nvim-web-devicons' })

    use({ 'nvim-lualine/lualine.nvim', requires = 'kyazdani42/nvim-web-devicons' })
    use({ 'arkav/lualine-lsp-progress' })

    use({ 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim' })
    use({ 'LinArcX/telescope-env.nvim' })
    use({ 'ahmedkhalf/project.nvim' })
    use({ 'glepnir/dashboard-nvim' })

    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })

    use({ 'dstein64/vim-startuptime' })

    use({ 'lukas-reineke/indent-blankline.nvim' })

    use({ 'jose-elias-alvarez/null-ls.nvim', requires = 'nvim-lua/plenary.nvim' })

    use({ 'windwp/nvim-autopairs' })

    use({ 'numToStr/Comment.nvim' })

    use({ '907th/vim-auto-save' }) -- 自动保存
    use({ 'kang8/smartim' }) -- macos 自动切换输入法
    use({ 'junegunn/vim-easy-align' }) -- 对齐
    use({ 'lambdalisue/suda.vim' }) -- 提供 sudo
    use({ 'tpope/vim-surround' }) -- 在 vim 中对括号/引号等环绕字符非常简单快速的修改
    use({ 'itchyny/vim-cursorword' }) -- 使用下划线显示同一单词
    use({
      'iamcco/markdown-preview.nvim',
      run = function()
        vim.fn['mkdp#util#install']()
      end,
    })

    --------------------- Git -----------------------------
    use({ 'lewis6991/gitsigns.nvim' })

    --------------------- LSP -----------------------------
    use({ 'neovim/nvim-lspconfig' })
    use({ 'williamboman/nvim-lsp-installer' })
    -- lanuage
    use({ 'b0o/schemastore.nvim' }) -- json
    use({ 'simrat39/rust-tools.nvim' }) -- rust

    --------------------- cmp -> code complete ------------
    use({ 'hrsh7th/nvim-cmp' })
    -- snippet
    use({ 'hrsh7th/vim-vsnip' })
    -- source
    use({ 'hrsh7th/cmp-vsnip' })
    use({ 'hrsh7th/cmp-nvim-lsp' })
    use({ 'hrsh7th/cmp-buffer' })
    use({ 'hrsh7th/cmp-path' })
    use({ 'hrsh7th/cmp-cmdline' })
    -- Common programming lanuage code snippet
    use({ 'rafamadriz/friendly-snippets' })
    -- ui
    use({ 'onsails/lspkind-nvim' })
  end,
  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end,
    },
  },
})
