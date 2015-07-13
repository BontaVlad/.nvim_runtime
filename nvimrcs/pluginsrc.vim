"automatically populate the g:airline_symbols dictionary with the powerline symbols.
let g:airline_powerline_fonts = 1

" Change the default mapping and the default command to invoke CtrlP:
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Disable Golden view default keybindings
let g:goldenview__enable_default_mapping = 0

" When invoked, unless a starting directory is specified, CtrlP will set its local working directory according to this variable:
let g:ctrlp_working_path_mode = 'ra'

"Exclude files and directories using Vim's wildignore and CtrlP's own g:ctrlp_custom_ignore:
set wildignore+=*/tmp/*,**/migrations/*,**/logs/*,**/htdocs/*,**/deploy/*,*.so,*.swp,*.zip,

" IndentGuides options
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

set ts=4 sw=4 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=238
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=238


" Syntastic configuration
let g:syntastic_enable_signs=1
" let g:syntastic_auto_jump=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_python_checkers = ['flake8', 'frosted']
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_c_checkers = ['clang_check', 'gcc']
let g:syntastic_c_compiler = 'clang'

" NERDTree ignore *.pyc
let NERDTreeIgnore = ['\.pyc$']

" Enable TagBar
nmap <F8> :TagbarToggle<CR>
nmap <Leader>f :TagbarOpen fj<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ag searching and cope displaying
"    requires ag.vim - it's much better than vimgrep/grep
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ackprg = 'ag --nogroup --nocolor --column'

map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>n :cn<cr>
map <leader>p :cp<cr>

" Pymode vim settings
let g:pymode_lint = 0
let g:pymode_trim_whitespaces = 1
let g:pymode_run = 0
let g:pymode_rope = 1
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autoimport_modules = ["os.*", "django.*"]
let g:pymode_virtualenv = 1
let g:pymode_rope_regenerate_on_write = 0
let g:pymode_rope_autoimport = 0
" let g:pymode_doc_bind = 'D'

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

"Use ack with silver Searcher
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif

" racer Rust autocomplete plugin
set hidden
let g:racer_cmd = "/usr/share/racer/target/release/racer"
let $RUST_SRC_PATH="/usr/local/src/rust/src"
" insert racer autocomplete in neocomplete
" let g:racer_cmd = 'racer'

" vim-rachet settings
if has("autocmd")
    au BufReadPost *.rkt,*.rktl set filetype=racket
    au filetype racket set lisp
    au filetype racket set autoindent
endif
