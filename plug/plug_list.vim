""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plug 插件管理工具
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" call plug#begin('~/.config/nvim/plugged') " 插件列表
call plug#begin('~/.vim/plugged') " 插件列表
"Plug 'wakatime/vim-wakatime'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'          " emoji 图标
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'luochen1990/rainbow'              "彩虹括号
Plug 'airblade/vim-gitgutter'
"Plug 'junegunn/fzf'
"Plug 'junegunn/fzf.vim'
"Plug 'theniceboy/vim-deus'
Plug 'morhetz/gruvbox' " theme
Plug 'preservim/nerdcommenter'          " 注释
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
Plug 'itchyny/vim-cursorword'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'
Plug 'yianwillis/vimcdoc'    "vimdoc 中文
Plug '907th/vim-auto-save' " 自动保存
Plug 'storyn26383/vim-vue'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'jelera/vim-javascript-syntax'
Plug 'lambdalisue/suda.vim' " nvim 使用 sudo
Plug 'junegunn/vim-easy-align' " 对齐
Plug 'prettier/vim-prettier', { 'do': 'yarn install' } " prettier format
Plug 'cespare/vim-toml' " syntax for TOML
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " MarkDown 预览
call plug#end()
