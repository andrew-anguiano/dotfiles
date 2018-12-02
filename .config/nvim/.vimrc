set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'joshdick/onedark.vim'
Plugin 'skielbasa/vim-material-monokai'
Plugin 'dracula/vim'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'rstacruz/vim-closer'
Plugin 'rstacruz/vim-hyperstyle'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'leafgarland/typescript-vim'
Plugin 'prettier/vim-prettier'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'w0rp/ale'
Plugin 'sheerun/vim-polyglot'
Plugin 'alvan/vim-closetag'
Plugin 'qpkorr/vim-bufkill'
Plugin 'nelsyeung/twig.vim'
Plugin 'ap/vim-css-color'

Plugin 'edkolev/tmuxline.vim'

" Node stuff
Plugin 'moll/vim-node'

" JS stuff
Plugin 'pangloss/vim-javascript'
Plugin 'heavenshell/vim-jsdoc'


" Plugin 'mxw/vim-jsx'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'leshill/vim-json'

if has("nvim")
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'wokalski/autocomplete-flow'
  Plugin 'Shougo/neosnippet'
  Plugin 'Shougo/neosnippet-snippets'
  Plugin 'carlitux/deoplete-ternjs'
  Plugin 'mhartington/nvim-typescript'
  Plugin 'chemzqm/vim-jsx-improve'
  Plugin 'Shougo/echodoc.vim'
endif

call vundle#end()

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
set autoindent
set backspace=indent,eol,start
set diffopt=filler
set diffopt+=iwhite
set encoding=utf-8 nobomb
set noshowmode

set formatoptions=
set formatoptions+=c
set formatoptions+=r
set formatoptions+=o
set formatoptions+=n
set formatoptions+=1
set formatoptions+=1

set gdefault

" Vim-only config
if !has("nvim")
  set ttymouse=xterm
endif

set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set magic
set mouse+=a
set nojoinspaces
set nostartofline
set noswapfile
set nowrap
set report=0
set ruler
set scrolloff=5
set smartcase
set smarttab
set softtabstop=2
set title
set ttyfast
set undofile
set visualbell
set wildchar=<TAB>
set wildmenu
set wildmode=list:longest
set winminheight=0
set wrapscan

set colorcolumn=80

set wildignore+=.DS_Store,*/bower_components/*,*/node_modules/*
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/smarty/*,*/vendor/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*

let mapleader=","

set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

" FastEscape
" Speed up transition from modes
if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif

map <Leader>/ :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" close vim if nerdtree is only open window
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Change shape of cursor in different modes
" OSX ---
if has("unix")
  let s:uname = system("uname -s")
  if s:uname == "Darwin\n"
    " Do Mac stuff here
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical line in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
  else
    " tmux on OSX ---
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  endif
endif

" move between buffers in a window
map <leader>m :bnext<CR>
map <leader>n :bprevious<CR>

" close buffer without closing split
map <leader>d :BD<CR>

" move between splits
" CTRL-i,j,k,l
noremap <C-h> <C-W><C-H>
noremap <C-j> <C-W><C-J>
noremap <C-k> <C-W><C-K>
noremap <C-l> <C-W><C-L>

" move lines up/down with ALT-j and ALT-k

nnoremap ê :m .+1<CR>==
nnoremap ë :m .-2<CR>==
inoremap ê <Esc>:m .+1<CR>==gi
inoremap ë <Esc>:m .-2<CR>==gi
vnoremap ê :m '>+1<CR>gv=gv
vnoremap ë :m '<-2<CR>gv=gv

" make splits open right/bottom
set splitbelow
set splitright

" map save
map <leader>s :w<CR>

" close pane
map <leader>x :x<CR>

" open new empty buffer in current window
map <leader>b :ene<CR>

" Airline customizations
let g:airline_theme='dracula'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#hunks#enabled=0
let g:airline_powerline_fonts = 1

" Lightline
let g:lightline = {'colorscheme': 'dracula'}

syntax on
syntax enable
set background=dark
set termguicolors
colorscheme dracula 
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
set number

" ctrlp customization
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] " ignore .gitignore files

" Prettier Config
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#trailing_comma = 'none'
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

augroup FiletypeGroup
  autocmd!
  au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

" ALE configuration
nmap <silent> <leader>k <Plug>(ale_previous_wrap)
nmap <silent> <leader>j <Plug>(ale_next_wrap)
let g:ale_fixers = {
      \ 'javascript': ['eslint', 'prettier'],
      \ 'typescript': ['tslint', 'prettier'],
      \ 'twig': ['remove_trailing_lines', 'trim_whitespace']
      \ }
let g:ale_linter_aliases = {'jsx': 'css'}
let g:ale_lint_delay = 1000
let g:ale_completion_enabled = 1
let g:ale_echo_msg_warning_str = '△'
let g:ale_echo_msg_error_str = '⨯'
let g:ale_echo_msg_format = '[%severity% %linter%] %s' 
let g:ale_linters = {
      \ 'typescript': ['flow', 'tslint', 'prettier'],
      \ 'javascript' : ['eslint', 'prettier'],
      \ 'jsx': ['eslint', 'prettier'],
      \ 'twig': [],
      \ 'php': []
      \}

" deoplete
let g:deoplete#enable_at_startup = 1
let g:echodoc#enable_at_startup = 1
let g:deoplete#sources#ternjs#tern_bin = '/usr/local/bin/ternjs'
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#filetypes = [
  \ 'jsx',
  \ 'javascript.jsx',
  \ 'vue'
  \ ]
" neosnippet
let g:neosnippet#enable_completed_snippet = 1

" Ag search
let g:ackprg = 'ag --nogroup --nocolor --column'
cnoreabbrev Ack Ack!
nnoremap <leader>a :Ack!<space>

" Polyglot
let g:polyglot_disabled = ['twig']

" TS
let g:nvim_typescript#default_mappings = 1

" JS
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
let g:vim_jsx_pretty_colorful_config = 1

" JSDoc
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_underscore_private = 1

" Tmuxline
let g:tmuxline_preset = {
  \'a'    : ['#S', '#I #W'],
  \'b'    : '#F',
  \'win'  : '#I #W',
  \'y'    : ['#(~/bin/tmux-spotify)', '#(~/.shell-config/bg.sh)'],
  \'z'    : '#(tmux-mem-cpu-load -i 2 -a 0)'}

