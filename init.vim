"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


" General Settings
let mapleader = "\\"
if !exists('g:vscode')
  source $LOCALAPPDATA/nvim/plug-config/polyglot.vim
endif
source $LOCALAPPDATA/nvim/vim-plug/plugins.vim
source $LOCALAPPDATA/nvim/general/settings.vim
source $LOCALAPPDATA/nvim/general/functions.vim
source $LOCALAPPDATA/nvim/keys/mappings.vim

if exists('g:vscode')
  " VS Code extension
  source $LOCALAPPDATA/nvim/vscode/settings.vim
  source $LOCALAPPDATA/nvim/plug-config/easymotion.vim
  source $LOCALAPPDATA/nvim/plug-config/highlightyank.vim
else

  " Themes
  source $LOCALAPPDATA/nvim/themes/syntax.vim
  source $LOCALAPPDATA/nvim/themes/nvcode.vim

  " Plugin Configuration
  source $LOCALAPPDATA/nvim/keys/which-key.vim
  source $LOCALAPPDATA/nvim/plug-config/vim-commentary.vim
  source $LOCALAPPDATA/nvim/plug-config/rnvimr.vim
  source $LOCALAPPDATA/nvim/plug-config/better-whitespace.vim
  source $LOCALAPPDATA/nvim/plug-config/fzf.vim
  source $LOCALAPPDATA/nvim/plug-config/codi.vim
  source $LOCALAPPDATA/nvim/plug-config/vim-wiki.vim
  luafile $LOCALAPPDATA/nvim/lua/nvcodeline.lua
  " luafile $LOCALAPPDATA/nvim/lua/treesitter.lua
  source $LOCALAPPDATA/nvim/plug-config/coc/coc.vim
  source $LOCALAPPDATA/nvim/plug-config/coc/coc-extensions.vim
  source $LOCALAPPDATA/nvim/plug-config/easymotion.vim
  source $LOCALAPPDATA/nvim/plug-config/goyo.vim
  source $LOCALAPPDATA/nvim/plug-config/vim-rooter.vim
  source $LOCALAPPDATA/nvim/plug-config/start-screen.vim
  source $LOCALAPPDATA/nvim/plug-config/gitgutter.vim
  source $LOCALAPPDATA/nvim/plug-config/git-messenger.vim
  source $LOCALAPPDATA/nvim/plug-config/closetags.vim
  source $LOCALAPPDATA/nvim/plug-config/floaterm.vim
  source $LOCALAPPDATA/nvim/plug-config/barbar.vim
  source $LOCALAPPDATA/nvim/plug-config/far.vim
  source $LOCALAPPDATA/nvim/plug-config/tagalong.vim
  source $LOCALAPPDATA/nvim/plug-config/bracey.vim
  source $LOCALAPPDATA/nvim/plug-config/asynctask.vim
  source $LOCALAPPDATA/nvim/plug-config/window-swap.vim
  source $LOCALAPPDATA/nvim/plug-config/markdown-preview.vim
  source $LOCALAPPDATA/nvim/plug-config/neovide.vim
  luafile $LOCALAPPDATA/nvim/lua/plug-colorizer.lua
  source $LOCALAPPDATA/nvim/plug-config/vimspector.vim
  " source $LOCALAPPDATA/nvim/plug-config/sneak.vim
  " source $LOCALAPPDATA/nvim/plug-config/rainbow.vim
  " source $LOCALAPPDATA/nvim/plug-config/illuminate.vim
  " source $LOCALAPPDATA/nvim/plug-config/vista.vim
  " source $LOCALAPPDATA/nvim/plug-config/xtabline.vim
  " source $LOCALAPPDATA/nvim/plug-config/ale.vim
endif
source $LOCALAPPDATA/nvim/plug-config/quickscope.vim

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $LOCALAPPDATA/nvim/paths.vim
endif

" Better nav for omnicomplete TODO figure out why this is being overridden
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
