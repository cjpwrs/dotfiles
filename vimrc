""
"" Basic Setup
""
let mapleader=" "  " map leader to space
set nocompatible   " Use vim, no vi defaults
set number         " Show line numbers
set ruler          " Show line and column number
syntax enable      " Turn on syntax highlighting allowing local overrides
set encoding=utf-8 " Set default encoding to UTF-8
se t_Co=256        " set colors to 256

""
"" Column Highlight
""
hi CursorLine   cterm=NONE ctermbg=235
hi CursorColumn cterm=NONE ctermbg=235
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

""
"" Whitespace
""

set nowrap                     " don't wrap lines
set tabstop=2                  " a tab is two spaces
set shiftwidth=2               " an autoindent (with <<) is two spaces
set expandtab                  " use spaces, not tabs
set list                       " Show invisible characters
set backspace=indent,eol,start " backspace through everything in insert mode

if exists("g:enable_mvim_shift_arrow")
  let macvim_hig_shift_movement = 1 " mvim shift-arrow-keys
endif

" List chars

set listchars=""          " Reset the listchars
set listchars=tab:\ \     " a tab should display as " ", trailing whitespace as "."
set listchars+=trail:.    " show trailing spaces as dots
set listchars+=extends:>  " The character to show in the last column when wrap is 
                          " off and the line continues beyond the right of the screen
set listchars+=precedes:< " The character to show in the last column when wrap is
                          " off and the line continues beyond the left of the screen

""
"" Searching
""
set hlsearch " highlight matches
set incsearch " incremental searching
set ignorecase " searches are case insensitive...
set smartcase " ... unless they contain at least one capital letter

"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=/Users/telnicky/.vim/bundle/neobundle.vim/
endif

""
"" Backup and swap files
""
set backupdir^=~/.vim/_backup// " where to put backup files.
set directory^=~/.vim/_temp// " where to put swap files.

nmap <C-leader> <ESC>

" Buffer mappings
nmap <leader><leader> <c-^>

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
nmap <C-k> [e
nmap <C-j> ]e

" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv
vmap <C-k> [egv
vmap <C-j> ]egv

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk

" Run tests
nmap <Leader>r :execute "!clear && rspec %\\:" . line(".")<CR>
nmap <Leader>R :execute "!clear && rspec %"<CR>

" Required:
call neobundle#begin(expand('/Users/telnicky/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'thoughtbot/pick.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'bling/vim-airline'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'godlygeek/csapprox'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'ervandew/supertab'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'jeetsukumaran/vim-buffergator'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'michaeljsmith/vim-indent-object'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'blueyed/vim-diminactive'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

"
" Plugin bindings
"

" Ack
map <leader>f :Ack 
map <leader>F :AckFromSearch 

" fugitive
map <leader>gb :Gblame<CR>
map <leader>gs :Gstatus<CR>
map <leader>gd :Gdiff<CR>
map <leader>gl :Gdiff<CR>
map <leader>gc :Gdiff<CR>
map <leader>gp :Gdiff<CR>

" Nerd Tree
map <leader>n :NERDTreeToggle<CR> :NERDTreeMirror<CR>

colorscheme gruvbox
se background=dark

" pick
map <leader>p :call PickFile()<CR>

