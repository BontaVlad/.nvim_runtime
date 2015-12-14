"automatically populate the g:airline_symbols dictionary with the powerline symbols.
let g:airline_powerline_fonts = 1
"
"
" IndentGuides options
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

set ts=4 sw=4 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=238
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=238
"
" " Syntastic configuration
" let g:syntastic_enable_signs=1
" " let g:syntastic_auto_jump=1
" let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
"
" set statusline+=%#warningmsg#
" set statusline+=%*
" set statusline+=%{exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}
"
" let g:syntastic_check_on_open = 1
" let g:syntastic_aggregate_errors = 1
" let g:syntastic_python_checkers = ['flake8', 'frosted']
" let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_c_checkers = ['clang_check', 'gcc']
" let g:syntastic_c_compiler = 'clang'
" let g:syntastic_enable_elixir_checker = 1       "enable check for elixir
" let g:syntastic_elixir_checkers = ['elixir']
"
"Make easytags generate tags async
" let g:easytags_async = 1

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" Neomake configuration
autocmd! BufWritePost * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_python_enabled_makers = ['flake8']

