" Mappings
" Remap leader key
let mapleader=","

" Remap `:` to `;` and vice versa
noremap ; :
noremap : ;

" Map keys for window management
" Clear mappings
nnoremap <C-h> <nop>
nnoremap <C-l> <nop>
nnoremap <C-j> <nop>
nnoremap <C-k> <nop>
" Integrate mappings with nvim-tmux-navigation
nnoremap <silent> <C-h>
      \ <cmd>lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()<CR>
nnoremap <silent> <C-j>
      \ <cmd>lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()<CR>
nnoremap <silent> <C-k>
      \ <cmd>lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()<CR>
nnoremap <silent> <C-l>
      \ <cmd>lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()<CR>
nnoremap <silent> <C-\>
      \ <cmd>lua require'nvim-tmux-navigation'.NvimTmuxNavigateLastActive()<CR>
nnoremap <silent> <C-Space>
      \ <cmd>lua require'nvim-tmux-navigation'.NvimTmuxNavigateNext()<CR>

nnoremap <Space>\| <C-W>\|
nnoremap <Space>_ <C-W>_
nnoremap <Space>- <C-w>-
nnoremap <Space>+ <C-w>+
nnoremap <Space>= <C-W>=

nnoremap <Space>r <C-w>r
nnoremap <Space>H <C-w>H
nnoremap <Space>J <C-w>J
nnoremap <Space>K <C-w>K
nnoremap <Space>L <C-w>L

" Map `Y` to only copy forward of the line
nnoremap Y y$

" Centre cursor when doing `n`. `N`. or `J`
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z<cmd>delmarks z<CR>

" Map keys to switch tabs
noremap <S-l> gt
noremap <S-h> gT

" Turn off arrow keys
noremap <up> <nop> | inoremap <up> <nop>
noremap <down> <nop> | inoremap <down> <nop>
noremap <left> <nop> | inoremap <left> <nop>
noremap <right> <nop> | inoremap <right> <nop>

" Increment and decrement controls
noremap <C-n> <C-a>
noremap <C-p> <C-x>

" To remove highlighting from search
nnoremap <Space>th <cmd>noh<CR>

" Remove trailing whitespaces
nnoremap <leader><BS> <cmd>%s#\($\n\s*\)\+\%$##<CR>

" Convert two spaces indentation to four
nnoremap <leader>> <cmd>%s/^\s*/&&<CR>

" Remove whitespaces in blank lines
nnoremap <leader>< <cmd>g/^\s\+$/s/\s\+//<CR>

" New terminal window
" Toggle split terminal 
cnoreabbrev <expr> termsp ((getcmdtype() is# ':' && getcmdline() is#
      \ 'termsp')?('botright sp term://zsh \| res -10'):('termsp'))

" Preferences
" Disables swap files for Vim
set noswapfile

" Yank and paste from and to clipboard
set clipboard=unnamedplus

" Autocomplete
" Maximum number of items listed
set pumheight=15

" Options
set completeopt=menuone,noselect

" Set signcolumn to always show
" Use `set signcolumn=yes:2` to have 2 sign columns
set signcolumn=yes

" Wrap texts accordingly with indentation
set breakindent breakindentopt=shift:-2 cpo+=n linebreak
let &showbreak = '↳ '
au BufRead,FileReadPost,BufReadPre,FileReadPre * hi! link NonText LineNR
set nowrap

" Keep a third of the lines under and over cursor when possible
augroup VCenterCursor
  au!
  au BufEnter,WinEnter,WinNew,VimResized,WinScrolled *,*.*
        \ let &scrolloff=winheight(win_getid())/3
augroup END

" Persistent Line Number
set number relativenumber

" Characters for indentation lines & trailing whitespaces
let &listchars="tab:⇥ ,trail:·"
set list

" 256 colours; set before `colorscheme ...`
set t_Co=256

" Vim highlights the current line
set cursorline

" `colorcolumn` and `textwidth`
au VimEnter * set colorcolumn=80

au FileType gitcommit set colorcolumn=73
au FileType gitcommit set textwidth=72

au FileType txt set textwidth=79

" Vim will always create split windows to the right or below
set splitbelow splitright

" Mapping the tab key into 2 spaces
filetype plugin indent on
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" Syntax highlighting
function! Hi(bang, token, fg, bg, style)
  exe 'hi' . (a:bang==v:true ? '!' : '') . ' '
        \ . a:token
        \ . (a:fg!='' ? ' guifg=' . a:fg : '')
        \ . (a:bg!='' ? ' guibg=' . a:bg : '')
        \ . (a:style!='' ? ' gui=' . a:style : '')
endfunction

function! HiLn(bang, target, source)
  exe 'hi' . (a:bang==v:true ? '!' : '') . ' link'
        \ . a:target
        \ . ' ' . a:source
endfunction

function! HiSp(bang, token, sp, style)
  exe 'hi' . (a:bang==v:true ? '!' : '') . ' '
        \ . a:token
        \ . (a:sp!='' ? ' guisp=' . a:sp : '')
        \ . (a:style!='' ? ' gui=' . a:style : '')
endfunction

" SyntaxHiAll
"
" Set up custom syntax highlighting (`g:syntax_hi` defined in theme.vim). All
" tokens are given colours.
"
function SyntaxHiAll()
  if exists('g:syntax_hi')
    for i in keys(g:syntax_hi)
      call Hi(v:true, i,
        \ g:syntax_hi[i][0],
        \ g:syntax_hi[i][1],
        \ g:syntax_hi[i][2]
      \)
    endfor
  endif
endfunction

command SyntaxHiAll call SyntaxHiAll()

" SyntaxHiComment
"
" Removes all syntax highlighting group colours (sets them to `NONE`) except
" for `Comment`.
"
function SyntaxHiComment()
  for i in keys(g:syntax_hi)
    if i=='Comment'
      call Hi(v:false,
        \ 'Comment',
        \ g:syntax_hi['Comment'][0],
        \ g:syntax_hi['Comment'][1],
        \ g:syntax_hi['Comment'][2]
      \ )
    else
      call Hi(v:true, i, 'NONE', 'NONE', 'NONE')
    endif
  endfor
endfunction

command SyntaxHiComment call SyntaxHiComment()

" NOTE:
" Unlike with `FullHi`, highlighting with `SyntaxHiAll` and `SyntaxHiComment`
" applies to all buffers since highlight groups aren't local to individual
" buffers.

" Default syntax highlighting to use
let g:syntax_mode='all'

if g:syntax_mode=='all'
  au VimEnter * call SyntaxHiAll()
elseif g:syntax_mode=='comment'
  au VimEnter * call SyntaxHiComment()
else
  echo 'Value in "g:syntax_mode" invalid'
endif

" FullHi - Full Highlighting
"
" Syntax highlighting 'light-switch' compatible with Treesitter's highlighting
" feature and the Telescope plugin.
"
syntax manual

function FullHiSwitch(opts)
  let i = a:opts

  syntax manual

  if i==2
    call FullHiComment()
    let g:fullhi_buffer[bufnr("%")]=2
  elseif i==1
    set syntax=ON | execute "TSBufEnable highlight" | set syntax=ON
    let g:fullhi_buffer[bufnr("%")]=1
  elseif i==0
    execute "TSBufDisable highlight" | set syntax=OFF
    let g:fullhi_buffer[bufnr("%")]=0
  endif

  if getbufvar(bufnr("%"), '&buflisted')==0
    let b:fullhi_status=i
  endif
endfunction

let g:fullhi_buffer=#{}

let g:fullhi_default=#{
  \ diff: 1,
  \ markdown: 1,
  \ gitcommit: 1,
  \ git: 1,
  \ java: 1,
  \ netrw: 1,
\ }

" For the first time entering a buffer
function FullHiInit()
  if !exists('b:has_been_entered')
    let b:has_been_entered=1
    if getbufvar(bufnr("%"), '&buflisted')==1
      if has_key(g:fullhi_default, &ft)
        call FullHiSwitch(g:fullhi_default[&ft])
      else
        call FullHiSwitch(0)
      endif
    endif
  endif
endfunction

au VimEnter,BufWinEnter * call FullHiInit()

" For when entering buffers trigger `syntax` and `TSBufEnable`/`TSBufDisable`
" independently. E.g. telescope.nvim.
function FullHiRefresh()
  silent! set syntax=ON
  silent! execute "TSBufEnable highlight"

  if getbufvar(bufnr("%"), '&buflisted')==0 && exists('b:fullhi_status')!=0
    silent! call FullHiSwitch(b:fullhi_status)
  else
    silent! call FullHiSwitch(g:fullhi_buffer[bufnr("%")])
  endif
endfunction

au BufEnter * call FullHiRefresh()

" Remove unlisted buffers from `g:fullhi_buffer`
function FullHiCullBuffers()
  for i in keys(g:fullhi_buffer)
    if getbufvar(eval(i), '&buflisted')!=1
      unlet g:fullhi_buffer[i]
    endif
  endfor
endfunction

au BufWinEnter * call FullHiCullBuffers()

" For buffers that aren't listed
" By default, highlighting will be on
function FullHiUnlisted()
  if getbufvar(bufnr("%"), '&buflisted')==0
    if !exists('b:fullhi_status')
      if has_key(g:fullhi_default, &ft)
        silent! call FullHiSwitch(g:fullhi_default[&ft])
        let b:fullhi_status=g:fullhi_default[&ft]
      else
        silent! call FullHiSwitch(0)
        let b:fullhi_status=0
      endif
    elseif exists('b:fullhi_status')!=0
      silent! call FullHiSwitch(b:fullhi_status)
    endif
  endif
endfunction

au BufEnter,BufAdd * call FullHiUnlisted()

" For writing new files
au VimEnter,BufAdd *
      \ if expand('%:t')=="" |
      \ let b:first_time_written=1 |
      \ endif

function FullHiWrite()
  if has_key(g:fullhi_default, &ft)
    if exists('b:first_time_written')
      silent! call FullHiSwitch(1)
      unlet b:first_time_written
    else
      silent! call FullHiSwitch(g:fullhi_buffer[bufnr("%")])
    endif
  else
    silent! call FullHiSwitch(g:fullhi_buffer[bufnr("%")])
  endif
endfunction

au BufWritePost * call FullHiWrite()

" Only turn on syntax highlighting for comments
" Courtesy of Christian Brabandt: https://vi.stackexchange.com/a/10456
function FullHiComment()
  set syntax=ON | execute "TSBufDisable highlight"

  let syntax_items=split(execute('syntax list'), "\n")[1:]
  call filter(syntax_items, {idx, val -> match(val, '^\w') > -1})
  call map(syntax_items, {idx, val -> split(val)[0]})
  for item in syntax_items
    if match(item, '\c\mcomment') == -1
      try
        exe 'syntax clear' item
      catch /^Vim\%((\a\+)\)\=:E28/
      endtry
    endif
  endfor
endfunction

" Commands
command FullHiOn call FullHiSwitch(1)
command FullHiOff call FullHiSwitch(0)
command FullHiComment call FullHiSwitch(2)
command FullHiTSOn execute "TSBufEnable highlight"
command FullHiTSOff execute "TSBufDisable highlight"

" Command shortcuts
cnoreabbrev <expr> hn ((getcmdtype() is# ':' && getcmdline() is#
      \ 'hn')?('FullHiOn'):('hn'))
cnoreabbrev <expr> hf ((getcmdtype() is# ':' && getcmdline() is#
      \ 'hf')?('FullHiOff'):('hf'))
cnoreabbrev <expr> hc ((getcmdtype() is# ':' && getcmdline() is#
      \ 'hc')?('FullHiComment'):('hc'))
cnoreabbrev <expr> hft ((getcmdtype() is# ':' && getcmdline() is#
      \ 'hft')?('FullHiTSOff'):('hft'))
cnoreabbrev <expr> hnt ((getcmdtype() is# ':' && getcmdline() is#
      \ 'hnt')?('FullHiTSOn'):('hnt'))
cnoreabbrev <expr> hp ((getcmdtype() is# ':' && getcmdline() is#
      \ 'hp')?('SyntaxHiComment'):('hp'))
cnoreabbrev <expr> hs ((getcmdtype() is# ':' && getcmdline() is#
      \ 'hs')?('SyntaxHiAll'):('hs'))
