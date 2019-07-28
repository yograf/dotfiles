syntax on
syntax enable

set hlsearch

" Do incremental searching
set incsearch

" Search case ignore
set ignorecase " Command line ignore case
set smartcase

" Show line numbers
set number

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif

set undodir=~/.config/nvim/undodir
set undofile
set undolevels=100
set undoreload=1000

set backupdir=~/.config/nvim/backup

" Keep .swp files in uniquely-named files in $HOME/.vim
set directory=~/.config/nvim/backup

set ruler		" show the cursor position all the time

" Highlight the line with the cursor
set cursorline

" Wrap long lines on word boundaries
set wrap linebreak

set showcmd		" display incomplete commands

if has('mouse')
  set mouse=a
endif

if has("autocmd")

  augroup vimrcEx
    au!

    " For all text files set 'textwidth' to 78 characters.
    autocmd FileType text setlocal textwidth=108

    " Trim whitespace onsave
    autocmd BufWritePre * %s/\s\+$//e

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    " Also don't do it when the mark is in the first line, that is the default
    " position when opening a file.
    autocmd BufReadPost *
          \ if line("'\"") > 1 && line("'\"") <= line("$") |
          \   exe "normal! g`\"" |
          \ endif

  augroup END

endif " has("autocmd")

" tab stuff
set tabstop=2

" Number of spaces to use for a <Tab> during editing operations
"set softtabstop=2

" This is closed for now - I'm using tabs
set noexpandtab

set smarttab

" The number of spaces to use for each indent
set shiftwidth=1
set autoindent
set smartindent

set nrformats-=octal

set ttimeout
set ttimeoutlen=100

" detect .md as markdown instead of modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown


" == AUTOCMD ================================
" by default .ts file are not identified as typescript and .tsx files are not
" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
" == AUTOCMD END ================================

" Unix as standard file type
set ffs=unix,dos,mac

" Always utf8
set termencoding=utf-8
set encoding=utf-8
set enc=utf-8
set fileencoding=utf-8

set so=5 " scroll lines above/below cursor
set sidescrolloff=5
set lazyredraw

set magic " for regular expressions

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if has('path_extra')
  setglobal tags-=./tags tags^=./tags;
endif

set autoread

if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options

" buffer settings
set hid " buffer becomes hidden when abandoned

" stop highlighting of underscores in markdown files
autocmd BufNewFile,BufRead,BufEnter *.md,*.markdown :syntax match markdownIgnore "_"

" Enable yanking to the clipboard
set clipboard=unnamedplus

set completeopt=longest,menuone,preview

" Italic comments
hi Comment gui=italic cterm=italic
hi htmlArg gui=italic cterm=italic

" Folding settings {{{

set foldenable
set foldmethod=syntax
set foldlevel=99
set foldlevelstart=99
set foldcolumn=0

nnoremap <space> za   "Space key for folding switch
filetype plugin indent on " activates indenting for files

 " Use modeline overrides
  set modeline
  set modelines=10

  "Reselect visual block after indent/outdent
  vnoremap < <gv
  vnoremap > >gv
