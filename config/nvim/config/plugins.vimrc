filetype plugin indent on

" neomake config
" autocmd! BufWritePost * Neomake
" autocmd BufLeave * QFix

" let g:neomake_place_signs = 0

" let g:neomake_open_list = 2

" let g:neomake_javascript_enabled_makers = ['eslint']

" COC
" command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')


" coc extensions
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']

" ALE
let g:ale_fixers = {
  \ 'javascript': ['prettier']
  \ }

let g:ale_fix_on_save = 0

let g:ale_lint_on_text_changed = 0

let g:ale_linter_explicit = 1

" Theme
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

" make background transparent
hi Normal ctermbg=NONE
hi EndOfBuffer ctermbg=NONE

set wildmenu " enhanced autocomplete
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*node_modules*,*.jpg,*.png,*.svg,*.ttf,*.woff,*.woff3,*.eot
",*public/css/*,*public/js*

" delimitMate options
let delimitMate_expand_cr=1

" enable matchit (for matching tags with %)
runtime macros/matchit.vim

" vim-sneak settings
hi SneakPluginTarget ctermfg=black ctermbg=181818


" completion
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

" deoplete
"let g:deoplete#enable_at_startup = 1
"let g:deoplete#sources = {}
"let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
let g:tern_request_timeout = 1
"let g:SuperTabClosePreviewOnPopupClose = 1

" disable colorizer at startup
let g:colorizer_startup = 0
let g:colorizer_nomap = 1


" Autosave
let g:auto_save = 1  " enable AutoSave on Vim startup


" Nvimux
let g:nvimux_prefix='<C-a>'
let nvimux_open_term_by_default=1

" Quick terminal to F1.
nmap <F1> <C-a>q


" unite

" let g:unite_data_directory='~/.nvim/.cache/unite'

"
" Unite Marks:
"   show file marks (eg, `mA`) in unite-mark.vim, if it's available.
"

"let g:unite_source_mark_marks =
"  \ "abcdefghijklmnopqrstuvwxyz" .
"  \ "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

" let g:unite_enable_start_insert=1
"let g:unite_source_history_yank_enable=1
"let g:unite_prompt='» '
" nnoremap <C-p> :Unite file_mru file_rec/neovim <cr>
"nnoremap <C-p> :Unite file_mru <cr>
nnoremap / :Unite line <cr>
"nnoremap b :Unite buffer <cr>
" nnoremap <C-l> :Unite<cr>
 nnoremap <space>y :Unite history/yank<cr>
 nnoremap t :Unite tab<cr>
map <C-p> [unite]p
map b [unite]b
map </> [unite]/
map <space>g [unite]g


" prettier
"let g:prettier#autoformat = 0

" Don't add semis
"let g:prettier#config#semi = 'true'
" print spaces between brackets
"let g:prettier#config#bracket_spacing = 'true'
" Trailing commas none/es5/all
"let g:prettier#config#trailing_comma = 'none'
" use tabs
"let g:prettier#config#use_tabs = 'true'
"let g:prettier#config#tab_width: '4'
"let g:prettier#eslint_integration: 'true'

" Print width
"let g:prettier#config#print_width = 65
"
"
"
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" NerdTree
nnoremap <silent> <F2> :NERDTreeFind<CR>
noremap <F3> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=60

" Airline power line
let g:webdevicons_enable = 1
let g:airline_powerline_fonts = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_airline_tabline = 1
