" Plugins
" Setup NeoBundle  ----------------------------------------------------------{{{
   " If vundle is not installed, do it first
     let bundleExists = 1
     if (!isdirectory(expand("$HOME/.nvim/bundle/neobundle.vim")))
        call system(expand("mkdir -p $HOME/.nvim/bundle"))
        call system(expand("git clone https://github.com/Shougo/neobundle.vim ~/.nvim/bundle/neobundle.vim"))
        let bundleExists = 0
     endif
    if 0 | endif
 
   if has('vim_starting')
      if &compatible
        " Be iMproved
        set nocompatible
     endif
 
  " Required:
      set runtimepath+=~/.nvim/bundle/neobundle.vim/
   endif
 
  " Required:
    call neobundle#begin(expand('~/.nvim/bundle/'))
    let pluginsExist = 1
  " Let NeoBundle manage NeoBundle
  " Required:
    NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc.vim', { 'do': 'make' }
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'Yggdroot/hiPairs'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'ryanoasis/vim-devicons'
NeoBundle 'joonty/vdebug'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'bling/vim-airline' 
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'Shougo/tabpagebuffer.vim'
NeoBundle 'tsukkee/unite-help'
NeoBundle 'honza/vim-snippets'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'jaxbot/semantic-highlight.vim'
NeoBundle 'ervandew/supertab'
NeoBundle 'yograf/phpfolding.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle  'scrooloose/syntastic'

call neobundle#end()
" Required:
  filetype plugin indent on
  let pluginsExist=1
  NeoBundleCheck
" }}}
let g:deoplete#enable_at_startup = 1
let mapleader = ','
" vim indent guides
let g:indent_guides_auto_colors = 2
hi IndentGuidesOdd  ctermbg=red
hi IndentGuidesEven ctermbg=darkgrey
set cursorline                  " Highlight current line
hi CursorLine   cterm=NONE ctermbg=240 ctermfg=NONE
hi TabLineFill ctermfg=NONE ctermbg=NONE
hi TabLine ctermfg=Blue ctermbg=236
hi TabLineSel ctermfg=white ctermbg=red
set number                      " Line numbers on
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace   

" Move to left and right tabs  
map <S-H> gT
map <S-L> gt

" Store swap files in fixed location, not current directory.
set dir=~/.vimswap//,/var/tmp//,/tmp//,.

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Airline power line
let g:webdevicons_enable = 1
let g:airline_powerline_fonts = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_airline_tabline = 1

let g:semanticTermColors = [28,1,2,3,4,5,6,7,25,9,10,34,12,13,14,15,16,125,124,19]
:nnoremap <Leader>s :SemanticHighlightToggle<cr>
set hlsearch " Highlight searches
set incsearch " Do incremental searching
set expandtab " Insert spaces when TAB is pressed.
set tabstop=2 shiftwidth=2 softtabstop=2 " This is what we like
set autoindent
set showcmd " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode
set ruler               " Show the line and column numbers of the cursor.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set wrap
set modifiable
set modeline            " Enable modeline.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)
set nostartofline       " Do not jump to first character with page commands.
"set wildignorecase
set ignorecase " Command line ignore case 

let g:unite_data_directory='~/.nvim/.cache/unite'
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
let g:unite_prompt='» '
nnoremap <C-p> :Unite file_mru file_rec/neovim <cr>
nnoremap <space>/ :Unite line <cr>
nnoremap <space>b :Unite -quick-match buffer <cr>
nnoremap <C-l> :Unite<cr>

nnoremap <space> za   "Space key for folding switch


" Let vim know Drupal files are php
if has("autocmd")
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif
" Omni complete for PHP
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" Wrap words

" Save file when exiting insert mode
map <Esc> <Esc>:w<CR>
" Use ; for commands
nnoremap ; :

"autocmd FileType php :autocmd InsertLeave * :w

map <F12> <Esc>:EnableFastPHPFolds<Cr> 
inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>

" solarized
syntax enable
" set background=dark
" colorscheme solarized
let g:solarized_termcolors=256
set wrap
" set autoindent
set ai 
" set smart autoindent
set si
" hilight cursor coloumn
"
" Boost speed by altering character redraw rates to your terminal
set ttyfast


" make j and k work on wraped lines
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
