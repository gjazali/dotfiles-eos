" vim-markdown
" Disable folding for vim-markdown
let g:vim_markdown_folding_disabled = 1

" vimspector
" Enable default key maps for Vimspector
let g:vimspector_enable_mappings='HUMAN'

" autopairs
" Add characters to auto-pair on certain file types
au FileType html              silent! let b:AutoPairs=AutoPairsDefine({ '<!--':'-->' }, ['{'])
au FileType css,java,swift    silent! let b:AutoPairs=AutoPairsDefine({ '/*':'*/' })
au FileType markdown          silent! let b:AutoPairs=AutoPairsDefine({ '*':'*', '**':'**', '***':'***', '```':'```', '<!--':'-->' })

" vim-hexokinase
" Change virtual text and sign icon
let g:Hexokinase_virtualText = '█'
let g:Hexokinase_signIcon = '█'

" Colouring style
let g:Hexokinase_highlighters=['virtual']

" Patterns to match
let g:Hexokinase_optInPatterns = [
    \ 'full_hex',
    \ 'triple_hex',
    \ 'rgb',
    \ 'rgba',
    \ 'hsl',
    \ 'hsla'
    \ ]

let g:Hexokinase_ftDisabled = ['asm']

" nerdcommenter
" Add space after commenting with NERDCommenter
let NERDSpaceDelims=1

" vim-fugitive
" Automatically correct `:git` to Fugitive's `:Git`
cnoreabbrev <expr> git ((getcmdtype() is# ':' && getcmdline() is#
    \ 'git')?('Git'):('git'))
cnoreabbrev <expr> gd ((getcmdtype() is# ':' && getcmdline() is#
    \ 'gd')?('Git diff'):('gd'))
cnoreabbrev <expr> gdc ((getcmdtype() is# ':' && getcmdline() is#
    \ 'gdc')?('Git diff --cached'):('gdc'))

" NeoDebug
let g:neodbg_openstacks_default=1
let g:neodbg_openregisters_default=1

" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" VimTeX
let g:vimtex_view_method='zathura'
let maplocalleader = ","

" Argument: e.g. '../../..'
command! -nargs=1 TelescopeDirectoryLevel
      \ execute "Telescope find_files cwd=" . <q-args>
cnoreabbrev <expr> tscdir ((getcmdtype() is# ':' && getcmdline() is#
      \ 'tscdir')?('TelescopeDirectoryLevel'):('tscdir'))
