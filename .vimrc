filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


set nocompatible
syntax on
filetype indent on
filetype plugin on



" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
 
" Control-T = NERDtree
map <silent> <c-t> :NERDTree <cr>

" Control-\ = Wrap on/off
map <silent> <c-\> :set wrap! <cr>

" Control-L = Fuzzy-find file
map <silent> <c-l> :FufFile <cr>

" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set linebreak " But if we wrap, make it right
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
 
" Formatting (some of these are for coding in C and C++)
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,elsif,elif,while,do,for,switch,case,begin,rescue,ensure,try,except,finally,def,end,with
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab

" Different ident settings for Python
au BufEnter *.py set ts=4 shiftwidth=4

" Markdown
augroup mkd
  autocmd BufRead *.text set ai formatoptions=tcroqn2 comments=n:&gt;
augroup END

" Visual stuff
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
set cul " highlight current line

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" macvim specific
if has("gui_macvim")
" set cuc " highlight current column 
  colorscheme railscasts
  set mousehide  " Hide mouse after chars typed
  set mouse=a  " Mouse in all modes
  set lines=78 " window height
  set columns=200 " and width
  set bg=dark 
  set transparency=4
  let macvim_hig_shift_movement = 1
  set go=egmrLi
  macmenu &File.New\ Tab key=<nop>
  map <D-t> <Plug>PeepOpen
endif
