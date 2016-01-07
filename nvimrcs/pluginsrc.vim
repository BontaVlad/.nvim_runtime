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

" Make easytags generate tags async
autocmd FileType python let b:easytags_auto_highlight = 0
let g:easytags_async = 1
let g:easytags_syntax_keyword = 'always'
set tags=./tags
let g:easytags_dynamic_files = 1

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" Neomake configuration
autocmd! BufWritePost * Neomake
let g:neomake_javascript_eslint_maker = {
        \ 'args': ['-f', 'compact', '-c', '/home/vlad/.eslintrc'],
        \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
        \ '%W%f: line %l\, col %c\, Warning - %m'
        \ }
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_python_enabled_makers = ['flake8']

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1

" Goldenview configuration
let g:goldenview__enable_default_mapping = 0 "disable default keybindings
