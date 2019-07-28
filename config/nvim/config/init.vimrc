call plug#begin('~/.config/nvim/plugged')

" colorschemes Solarized
Plug 'altercation/vim-colors-solarized'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
" general
" Plug 'ervandew/supertab'
" Plug 'benekastah/neomake'
" Plug 'roxma/nvim-completion-manager'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeFind' }
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'isRuslan/vim-es6'
Plug 'haya14busa/incsearch.vim'
Plug 'vim-utils/vim-husk'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Shougo/unite.vim'
Plug 'yograf/vim-fastunite'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/neoyank.vim'
Plug 'Shougo/unite-outline'
Plug 'tsukkee/unite-tag'
Plug 'easymotion/vim-easymotion'
Plug '907th/vim-auto-save'
" Plug 'dbeniamine/cheat.sh-vim'
"Plug 'carlosrocha/vim-chrome-devtools', { 'do': 'npm install && npm run build' }

" Typescript
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'


" Tabs
Plug 'gcmt/taboo.vim'

" terminal
Plug 'kassio/neoterm'
Plug 'wincent/terminus'
Plug 'hkupty/nvimux'

" editing
Plug 'junegunn/vim-easy-align'
Plug 'mbbill/undotree'
Plug 'nathanaelkane/vim-indent-guides' " `,ig` to toggle
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-sleuth'
Plug 'mileszs/ack.vim'
Plug 'justinmk/vim-sneak'
Plug 'vim-scripts/camelcasemotion'

" Games
Plug 'johngrib/vim-game-code-break'
" eye candy
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'lilydjwg/colorizer', { 'on': 'ColorToggle' }

" javascript
Plug 'pangloss/vim-javascript'
" Plug 'guileen/vim-node-dict'
" https://github.com/moll/vim-node
" gf
Plug 'moll/vim-node'
"Plug 'othree/yajs.vim'
"Plug '1995eaton/vim-better-javascript-completion'
"Plug 'gavocanov/vim-js-indent'
"Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
"Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
"Plug 'digitaltoad/vim-jade'
"Plug 'elzr/vim-json'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'

" Total commander
"Plug 'vifm/neovim-vifm'

" Git command helpers (:G*)
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" other
Plug 'ciaranm/detectindent'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
"Plug 'othree/csscomplete.vim'
Plug 'terryma/vim-multiple-cursors'
"Plug 'sukima/xmledit'

" text objects
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-user'
Plug 'glts/vim-textobj-comment'
Plug 'kana/vim-textobj-fold'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-function'
Plug 'thinca/vim-textobj-function-javascript'


call plug#end()
