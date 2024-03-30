" Turn off syntax highlighting
syntax off

" Line number
set number relativenumber

" Expand tab to two spaces
filetype plugin indent on
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" Clipboard
set clipboard=unnamedplus

" Use semicolon to enter command mode
noremap ; :
noremap : ;

" Color column
au VimEnter * set colorcolumn=80

" Split
set splitbelow splitright

" Keep a third of the lines under and over cursor when possible
augroup VCenterCursor
  au!
  au BufEnter,WinEnter,WinNew,VimResized,WinScrolled *,*.*
        \ let &scrolloff=winheight(win_getid())/3
augroup END

" Characters for indentation lines & trailing whitespaces
let &listchars="tab:⇥ ,trail:·"
set list
