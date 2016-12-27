" Plugins
" Setup NeoBundle  ----------------------------------------------------------{{{
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

" vimwiki
NeoBundle 'vimwiki/vimwiki'

" Comma and semi-colon insertion bliss for vim.
NeoBundle 'lfilho/cosco.vim'

" tab rename
NeoBundle 'gcmt/taboo.vim'

" Total commander
NeoBundle 'vifm/neovim-vifm'

" Snippets
NeoBundle 'epilande/vim-es2015-snippets'
NeoBundle 'epilande/vim-react-snippets'

NeoBundle 'SirVer/ultisnips'

" HTML creation
NeoBundle 'mattn/emmet-vim'

NeoBundle 'ryanoasis/vim-devicons'
NeoBundle 'lumiliet/vim-twig'
NeoBundle 'majutsushi/tagbar'

" Autosave
NeoBundle '907th/vim-auto-save'

NeoBundle 'joonty/vdebug'

NeoBundle 'Shougo/neomru.vim'

NeoBundle 'Townk/vim-autoclose'

NeoBundle 'altercation/vim-colors-solarized'

NeoBundle 'Shougo/unite.vim'

NeoBundle 'Shougo/neoyank.vim'

NeoBundle 'bling/vim-airline'

NeoBundle 'vim-airline/vim-airline-themes'

NeoBundle 'Shougo/tabpagebuffer.vim'

NeoBundle 'tsukkee/unite-help'

NeoBundle 'honza/vim-snippets'

NeoBundle 'mxw/vim-jsx'

NeoBundle 'pangloss/vim-javascript'

NeoBundle 'scrooloose/nerdcommenter'


" Git command helpers (:G*)
NeoBundle 'tpope/vim-fugitive'

" Various paired bracket mappings.
NeoBundle 'tpope/vim-unimpaired'

" Handle surroundings (ys/cs/ds).
NeoBundle 'tpope/vim-surround'

" Unix command helpers (e.g. SudoWrite).
NeoBundle 'tpope/vim-eunuch'

NeoBundle 'easymotion/vim-easymotion'

NeoBundle 'jaxbot/semantic-highlight.vim'

NeoBundle 'ervandew/supertab'

" PHP plugins
NeoBundle 'yograf/vim-drupal-snippets'
NeoBundle 'm2mdas/phpcomplete-extended'
NeoBundle 'yograf/phpfolding.vim'

NeoBundle 'kassio/neoterm'
" Tmux replacment
NeoBundle 'hkupty/nvimux'
NeoBundle 'scrooloose/nerdtree'

" Show git changes in gutter.
NeoBundle 'airblade/vim-gitgutter'

" Improved navigation between vim and tmux panes (C-h/C-j/C-k/C-l).
" NeoBundle 'christoomey/vim-tmux-navigator'

" Add :Bdelete command to close buffer without changing layout.
NeoBundle 'moll/vim-bbye'

" Start screen and improved session management.
NeoBundle 'mhinz/vim-startify'

" Doc
NeoBundle 'tobyS/vmustache'
NeoBundle 'tobyS/pdv'

NeoBundle 'nathanaelkane/vim-indent-guides'

" Solarized
NeoBundle 'altercation/vim-colors-solarized'

" Single command for grabbing then swapping windows.
NeoBundle 'wesQ3/vim-windowswap'

" Syntax checking.
NeoBundle  'scrooloose/syntastic'

call neobundle#end()
" Required:
  filetype plugin indent on
  let pluginsExist=1
  NeoBundleCheck
" }}}

" NerdTree
nnoremap <silent> <F2> :NERDTreeFind<CR>
noremap <F3> :NERDTreeToggle<CR>
map <F3> :NERDTreeToggle<CR>
map <F2> :NERDTreeFind<CR>

" deoplete {{{
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_start_length = 3
let g:deoplete#enable_smart_case = 1
" }}}

" Nvimux
let g:nvimux_prefix='<C-a>'
let nvimux_open_term_by_default=1

"

" javascript {{{
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
" }}}

" Vdebug config {{{
  let g:vdebug_options = {}
  let g:vdebug_options["watch_window_style"] = 'compact'
" }}}

let mapleader = ','
" vim indent guides
let g:indent_guides_auto_colors = 2
hi IndentGuidesOdd  ctermbg=red
hi IndentGuidesEven ctermbg=darkgrey

" Highlight current line.
set cursorline                  " Highlight current line

hi CursorLine  cterm=NONE ctermbg=240 ctermfg=NONE
hi TabLineFill ctermfg=NONE ctermbg=NONE
hi TabLine ctermfg=Blue ctermbg=236
hi TabLineSel ctermfg=white ctermbg=red
" Show current line number.
set number                      " Line numbers on
set listchars=tab:›\ ,trail:·,extends:#,nbsp:. " Highlight problematic whitespace

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
let g:UltiSnipsSnippetDirectories = ['~/.nvim/bundle/vim-drupal-snippets']
let g:UltiSnipsSnippetsDir = '~/.nvim/after/snippets'

" Autosave
let g:auto_save = 1  " enable AutoSave on Vim startup

" Airline power line
let g:webdevicons_enable = 1
let g:airline_powerline_fonts = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_airline_tabline = 1

let g:semanticTermColors = [28,1,2,3,4,5,6,7,25,9,10,34,12,13,14,15,16,125,124,19]
nnoremap <Leader>s :SemanticHighlightToggle<cr>
set hlsearch " Highlight searches

nnoremap <Leader>h :nohl<cr>
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

" Folding settings {{{

set foldenable
set foldmethod=syntax
set foldlevel=99
set foldcolumn=0
nnoremap <space> za   "Space key for folding switch
" }}}


let g:unite_data_directory='~/.nvim/.cache/unite'
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
let g:unite_prompt='» '
nnoremap <C-p> :Unite file_mru file_rec/neovim <cr>
nnoremap <space>/ :Unite line <cr>
nnoremap <space>b :Unite buffer <cr>
nnoremap <C-l> :Unite<cr>
nnoremap <space>y :Unite history/yank<cr>


" Omni complete for PHP
autocmd  FileType  php setlocal foldmethod=syntax omnifunc=phpcomplete_extended#CompletePHP
" Wrap words

" Save file when exiting insert mode
" map <Esc> <Esc>:w<CR>

" Use ; for commands
nnoremap ; :

"autocmd FileType php :autocmd InsertLeave * :w
map <F12> <Esc>:EnableFastPHPFolds<Cr> 

" Disable arrow keys on insert mode.
inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>

" solarized
syntax enable
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized
set wrap

" set autoindent
set ai

" set smart autoindent
set si

" Boost speed by altering character redraw rates to your terminal
set ttyfast

"Neovim Terminal
:tnoremap <Esc> <C-\><C-n>

" Show trailing spaces
set list!

" make j and k work on wraped lines
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj

" Open new splits on right and bottom.
set splitbelow
set splitright

" Easy navigation between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Eslint
let g:syntastic_javascript_checkers = ['eslint']


" Fold bg color
highlight Folded ctermbg=green

" Clipboard support
set clipboard+=unnamedplus


"  Edit vimrc -> init.vim
nnoremap <leader>v :e $MYVIMRC<CR>
nnoremap <leader>s :source $MYVIMRC<CR>
" Down line without edit
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Auto comma or semicolon
" nmap <F9> :AutoCommaOrSemiColonToggle<CR>
let g:auto_comma_or_semicolon = 1     " Default : 0

