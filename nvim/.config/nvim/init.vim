call plug#begin("~/.config/nvim/plugged")
Plug 'tpope/vim-sensible' " sets some normal standards
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'} " Markdown viewer
Plug 'vimsence/vimsence' " Discord Rich Presence
Plug 'vim-airline/vim-airline' " status bar
Plug 'vim-airline/vim-airline-themes' "status bar theme
Plug 'sheerun/vim-polyglot' " language packs
Plug 'https://github.com/morhetz/gruvbox' " color theme
Plug 'valloric/youcompleteme' " autoclompletion
Plug 'nvie/vim-flake8' " python syntax and style checker
Plug 'vim-syntastic/syntastic' " syntax checkings
Plug 'ctrlpvim/ctrlp.vim' " file finder
Plug 'raimondi/delimitmate' " auto closing brackets/quotes/...
Plug 'psf/black', {'branch': 'stable'} " autoformatting python code
call plug#end()

" Markdown viewer settings
filetype plugin on

" settings for discord rich presence
let g:vimsence_client_id = '439476230543245312'
let g:vimsence_small_text = 'NeoVim'
let g:vimsence_small_image = 'neovim'
let g:vimsence_editing_details = 'Editing: {}'
let g:vimsence_editing_state = 'Working on: {}'

" set backgrounds
set background=dark
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
colorscheme gruvbox

" settings for the airline status bar
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'

" disable splashscreen
set shortmess=I

" enable line numbers
set number

" autoclose the preview window
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" all extra windows pop up at the bottom
set splitbelow

" set tab as 4 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" shortcut for running python script
nnoremap <leader>e :!python3 %<cr>

" autoformat on save
autocmd BufWritePre *.py execute ':Black'

" keybind for Leader-Key
map <SPACE> <Leader>

