{ pkgs, inputs, ... }:
{
  imports = [
    ./direnv.nix
    ./tmux.nix
    # ./wezterm.nix
    ./zsh.nix
    ./fastfetch.nix
  ];

  home.packages = [
    # inputs.nixvim.packages."aarch64-darwin".default
  ];

  home.username = "mukeshkannan";
  home.homeDirectory = "/Users/mukeshkannan";
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;

  programs.neovim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [ 

      (pkgs.vimUtils.buildVimPlugin {
        name = "synthweave.nvim";
        src = pkgs.fetchFromGitHub {
          owner = "samharju";
          repo = "synthweave.nvim";
          rev = "e05b865c8591dfc810e7f2b31f93df80f1b9c6a6";
          hash = "sha256-B5di1yDdtw32IaWuarwkevhIwFxgWZpSNFbsVFW/MRI=";
        };
      })

      (pkgs.vimUtils.buildVimPlugin {
        name = "cowpile.nvim";
        src = pkgs.fetchFromGitHub {
          owner = "MKMukeshkannan";
          repo = "cowpile.nvim";
          rev = "91f95a6bcdbf0abd2a7d35805e2e2a2ac97c21e6";
          hash = "sha256-Vz7YRbjs52oZ+oqw+bfcGkWIdPBue37WSiyldTVQ8+w=";
        };
      })


      ultisnips
      null-ls-nvim
      harpoon2
      todo-comments-nvim
      blink-cmp
      mini-nvim
      neo-tree-nvim
      neovim-ayu
      nvim-dap
      nvim-dap-ui
      nvim-lspconfig

      nvim-treesitter
      nvim-treesitter-parsers.javascript
      nvim-treesitter-parsers.typescript
      nvim-treesitter-parsers.tsx
      nvim-treesitter-parsers.elixir

      oil-nvim
      plenary-nvim
      snacks-nvim
      telescope-nvim
      vim-tmux-navigator
    ];
  };

  programs.vim = {
      enable = true;
      # plugins = with pkgs.vimPlugins; [ ultisnips ];
#       extraConfig = ''
# syntax on
# 
# set number
# set relativenumber
# set hlsearch
# set incsearch
# set ignorecase
# set smartcase
# set mouse=a
# set tabstop=4       
# set shiftwidth=4    
# set expandtab       
# set autoindent      
# set smartindent     
# set encoding=utf-8
# set showmatch
# set wrap
# set laststatus=2
# set updatetime=300
# set splitright
# set foldmethod=marker
# set foldmarker={{{,}}}
# set autoread
# au FocusGained,BufEnter * checktime
# 
# 
# let mapleader = " "
# 
# nnoremap <Esc> :nohlsearch<CR>
# 
# map <C-j> <C-W>j
# map <C-k> <C-W>k
# map <C-h> <C-W>h
# map <C-l> <C-W>l
# 
# nnoremap <leader>1 :e main.cpp<CR>
# nnoremap <leader>2 :e input.txt<CR>
# nnoremap <leader>3 :e output.txt<CR>
# nnoremap <leader>4 :e debug.txt<CR>
# 
# nnoremap <leader>r :!clang++ -std=c++20 -Wall -Wextra -O2 main.cpp -o main && ./main<CR>
# 
# colorscheme desert
#       '';
  };

}
