let s:fg=#{
  \ 0: '#000000',
  \ 1: '#1B1B1B',
  \ 2: '#373737',
  \ 3: '#525252',
  \ 4: '#6D6D6D',
\ }
let s:bg=#{
  \ 0: '#FFFFFF',
  \ 1: '#F5F5F5',
  \ 2: '#EAEAEB',
  \ 3: '#E0E0E1',
  \ 4: '#D5D5D6',
  \ 5: '#CBCBCC',
  \ 6: '#C0C0C2',
  \ 7: '#B6B6B8',
\ }

let s:comment=#{
  \ distinct  : '#40A02B',
  \ neutral   : '#A8A7A9',
\ }
let s:basic=#{
  \ red       : #{
    \ bright    : '#D20F39',
    \ medium    : '#EB92A5',
    \ dim       : '#F7D3DB',
  \ },
  \ green     : #{
    \ bright    : '#40A02B',
    \ medium    : '#A8D49F',
    \ dim       : '#DCEED8',
  \ },
  \ orange    : #{
    \ bright    : '#FE640B',
    \ medium    : '#FFB990',
    \ dim       : '#FFE3D3',
  \ },
  \ yellow    : #{
    \ bright    : '#df8e1d',
    \ medium    : '#F0CC98',
    \ dim       : '#F9EAD6',
  \ },
  \ blue      : #{
    \ bright    : '#1e66f5',
    \ medium    : '#99B9FA',
    \ dim       : '#D6E3FD',
  \ },
  \ cyan      : #{
    \ bright    : '#179299',
    \ medium    : '#96CDD1',
    \ dim       : '#D5EBEC',
  \ },
  \ magenta   : #{
    \ bright    : '#8839EF',
    \ medium    : '#C9A5F8',
    \ dim       : '#E9DBFC',
  \ },
  \ pink   : #{
    \ bright    : '#ea76cb',
    \ medium    : '#F5C1E7',
    \ dim       : '#FBE6F6',
  \ },
  \ grey   : #{
    \ bright    : '#9CA0B0',
    \ medium    : '#D2D4DB',
    \ dim       : '#EDEEF1',
  \ },
\ }
let s:diagnostics=#{
  \ error  : #{
    \ sp        : '#D20F39',
    \ fg        : '#D20F39',
    \ bg        : '#F7D3DB',
  \ },
  \ warn   : #{
    \ sp        : '#df8e1d',
    \ fg        : '#df8e1d',
    \ bg        : '#F9EAD6',
  \ },
  \ info   : #{
    \ sp        : '#179299',
    \ fg        : '#179299',
    \ bg        : '#D5EBEC',
  \ },
  \ hint   : #{
    \ sp        : '#000000',
    \ fg        : '#6C6F85',
    \ bg        : '#E4E5E9',
  \ },
\ }
let s:accent=#{
  \ blue   : #{
    \ bright    : '#1e66f5',
    \ medium    : '#99B9FA',
    \ dim       : '#D6E3FD',
  \ },
  \ purple : #{
    \ bright    : '#7287FD',
    \ medium    : '#BFC8FE',
    \ dim       : '#E5E9FF',
  \ },
\ }

" Syntax
let g:syntax_hi=#{
  \ Constant       : [s:fg.2,             'NONE', 'NONE'],
  \ String         : [s:fg.2,             'NONE', 'NONE'],
  \ Character      : [s:fg.0,             'NONE', 'bold'],
  \ Number         : [s:fg.2,             'NONE', 'NONE'],
  \ Boolean        : [s:fg.0,             'NONE', 'bold'],
  \ Float          : [s:fg.2,             'NONE', 'NONE'],
  \ Identifier     : [s:fg.4,             'NONE', 'NONE'],
  \ Function       : [s:fg.4,             'NONE', 'NONE'],
  \ Statement      : [s:fg.0,             'NONE', 'bold'],
  \ Conditional    : [s:fg.0,             'NONE', 'bold'],
  \ Repeat         : [s:fg.0,             'NONE', 'bold'],
  \ Label          : [s:fg.0,             'NONE', 'bold'],
  \ Operator       : [s:fg.0,             'NONE', 'NONE'],
  \ Keyword        : [s:fg.0,             'NONE', 'bold'],
  \ Exception      : [s:fg.0,             'NONE', 'bold'],
  \ PreProc        : [s:fg.1,             'NONE', 'NONE'],
  \ Include        : [s:fg.1,             'NONE', 'NONE'],
  \ Define         : [s:fg.1,             'NONE', 'NONE'],
  \ Macro          : [s:fg.1,             'NONE', 'NONE'],
  \ PreCondit      : [s:fg.1,             'NONE', 'NONE'],
  \ Type           : [s:fg.2,             'NONE', 'NONE'],
  \ StorageClass   : [s:fg.2,             'NONE', 'NONE'],
  \ Structure      : [s:fg.2,             'NONE', 'NONE'],
  \ Typedef        : [s:fg.2,             'NONE', 'NONE'],
  \ Special        : [s:fg.0,             'NONE', 'NONE'],
  \ SpecialChar    : [s:fg.0,             'NONE', 'NONE'],
  \ Tag            : [s:fg.0,             'NONE', 'NONE'],
  \ Delimiter      : [s:fg.0,             'NONE', 'NONE'],
  \ SpecialComment : [s:fg.4,             'NONE', 'NONE'],
  \ Debug          : [s:fg.0,             'NONE', 'NONE'],
  \ Underlined     : [s:fg.3,             'NONE', 'underline'],
  \ TSPunctBracket : [s:fg.0,             'NONE', 'NONE'],
  \ Comment        : [s:comment.distinct, 'NONE', 'NONE'],
\ }

" General
" Normal
call Hi(v:true,    'Normal',                s:fg.0,                 s:bg.0,                 'NONE')

" Comments
call Hi(v:true,    'Comment',               '',                     '',                     'NONE')

" Menu
call Hi(v:false,   'Pmenu',                 s:fg.2,                 s:bg.4,                 'NONE')
call Hi(v:false,   'PmenuSel',              s:fg.0,                 s:bg.6,                 'NONE')
call Hi(v:false,   'PmenuSbar',             '',                     s:bg.7,                 'NONE')
call Hi(v:false,   'PmenuThumb',            '',                     s:fg.0,                 'NONE')
call Hi(v:false,   'CmpItemKind',           s:fg.4,                 'NONE',                 'NONE')
call Hi(v:false,   'CmpItemAbbr',           s:fg.2,                 '',                     'NONE')
call Hi(v:false,   'CmpItemAbbrDeprecated', s:bg.7,                 '',                     'NONE')
call Hi(v:false,   'CmpItemAbbrMatch',      s:fg.0,                 '',                     'NONE')
call Hi(v:false,   'CmpItemAbbrMatchFuzzy', s:fg.0,                 '',                     'underline')
call Hi(v:false,   'CmpItemMenu',           s:fg.4,                 '',                     'NONE')

" Cursor when not overridden by terminal's config
call Hi(v:true,    'Cursor',                s:fg.0,                 s:accent.blue.bright,   'NONE')

" Cursor line
hi clear CursorLine
call Hi(v:false,   'CursorLine',            '',                     '#ECF2FE',              '')
call Hi(v:false,   'CursorLineNr',          s:accent.blue.bright,   '#ECF2FE',              'NONE')

" Matching braces
hi clear MatchParen
call Hi(v:true,    'MatchParen',            s:bg.0,                 s:accent.blue.bright,   'NONE')

" Remove sign column background colour
call Hi(v:false,   'SignColumn',            '',                     s:bg.0,                 'NONE')
call Hi(v:false,   'LineNr',                s:bg.7,                 'NONE',                 '')

" ColorColumn
call Hi(v:true,    'ColorColumn',           'NONE',                 s:bg.2,                 'NONE')

" Visual mode
hi clear Visual
call Hi(v:false,   'Visual',                '',                     s:accent.blue.dim,      '')

hi clear VisualNOS
call Hi(v:false,   'VisualNOS',             '',                     s:accent.blue.dim,      '')

" Search highlight
call Hi(v:false,   'IncSearch',             'NONE',                 s:accent.purple.medium, 'NONE')
call Hi(v:false,   'Search',                'NONE',                 s:accent.purple.dim,    'NONE')
call Hi(v:false,   'Substitute',            s:fg.0,                 s:accent.blue.bright,   'NONE')

" Splits
call Hi(v:false,   'VertSplit',             s:bg.4,                 s:bg.4,                 'NONE')
call Hi(v:false,   'StatusLine',            s:bg.4,                 s:bg.4,                 'NONE')
call Hi(v:false,   'StatusLineNC',          s:bg.4,                 s:bg.4,                 'NONE')

" End-of-buffer character
call Hi(v:false,   'EndOfBuffer',           s:bg.7,                 'NONE',                 'NONE')

" NonText
call Hi(v:true,    'NonText',               s:bg.6,                 'NONE',                 'NONE')

" For trailing `listchars`
call Hi(v:false,   'Whitespace',            s:accent.blue.bright,   'NONE',                 'NONE')

" Git diffs
call Hi(v:true,    'DiffAdd',               'NONE',                 s:basic.green.dim,      'NONE')
call Hi(v:true,    'diffAdded',             'NONE',                 s:basic.green.dim,      'NONE')
call Hi(v:true,    'GitSignsAdd',           s:basic.green.bright,   'NONE',                 'NONE')

call Hi(v:true,    'DiffChange',            'NONE',                 s:basic.blue.dim,       'NONE')
call Hi(v:true,    'diffChanged',           'NONE',                 s:basic.blue.dim,       'NONE')
call Hi(v:true,    'GitSignsChange',        s:basic.blue.bright,    'NONE',                 'NONE')

call Hi(v:true,    'DiffDelete',            'NONE',                 s:basic.red.dim,        'NONE')
call Hi(v:true,    'diffRemoved',           'NONE',                 s:basic.red.dim,        'NONE')
call Hi(v:true,    'GitSignsDelete',        s:basic.red.bright,     'NONE',                 'NONE')

call Hi(v:true,    'DiffText',              s:fg.0,                 s:basic.blue.medium,    'NONE')

call Hi(v:true,    'diffFile',              s:fg.0,                 '',                     'bold')
call Hi(v:true,    'diffLine',              s:basic.grey.bright,    'NONE',                 '')
call Hi(v:true,    'diffIndexLine',         s:basic.pink.bright,    'NONE',                 '')

" Neovim health
call Hi(v:false,   'healthError',           s:basic.red.bright,     '',                     '')
call Hi(v:false,   'healthSuccess',         s:basic.green.bright,   '',                     '')
call Hi(v:false,   'healthWarning',         s:basic.yellow.bright,  '',                     '')

" Errors,          warnings,                etc.
call Hi(v:false,   'Error',                 s:basic.red.bright,     'NONE',                 'NONE')
call Hi(v:false,   'ErrorMsg',              s:basic.red.bright,     'NONE',                 'NONE')
call Hi(v:false,   'WarningMsg',            s:basic.yellow.bright,  'NONE',                 'NONE')

" Spelling
call HiSp(v:false, 'SpellBad',              s:diagnostics.error.sp, 'underline')
call HiSp(v:false, 'SpellCap',              s:diagnostics.warn.sp,  'underline')
call HiSp(v:false, 'SpellLocal',            s:diagnostics.info.sp,  'underline')
call HiSp(v:false, 'SpellRare',             s:diagnostics.hint.sp,  'underline')

" Others
call Hi(v:false,   'Folded',                s:basic.blue.bright,    s:bg.2,                 'NONE')
call Hi(v:false,   'MoreMsg',               s:basic.blue.bright,    'NONE',                 'NONE')
call Hi(v:false,   'ModeMsg',               s:fg.0,                 'NONE',                 'NONE')
call Hi(v:false,   'Question',              s:basic.blue.bright,    'NONE',                 'NONE')
call Hi(v:false,   'Title',                 s:basic.blue.bright,    'NONE',                 'NONE')
call Hi(v:false,   'Todo',                  s:bg.0,                 s:basic.green.bright,   'NONE')

au FileType help hi! link Todo Normal

" LSP diagnostics
" Foreground colours
call Hi(v:false,    'CustomDiagnosticTextError',   s:diagnostics.error.fg, '',                     '')
call Hi(v:false,    'CustomDiagnosticTextWarn',    s:diagnostics.warn.fg,  '',                     '')
call Hi(v:false,    'CustomDiagnosticTextInfo',    s:diagnostics.info.fg,  '',                     '')
call Hi(v:false,    'CustomDiagnosticTextHint',    s:diagnostics.hint.fg,  '',                     '')

" Background colours; slightly brighter than `LspDiagnosticsVirtualTextError`
" `guibg`
call HiSp(v:false,  'CustomDiagnosticHlError',     s:diagnostics.error.sp, 'underline')
call HiSp(v:false,  'CustomDiagnosticHlWarn',      s:diagnostics.warn.sp,  'underline')
call HiSp(v:false,  'CustomDiagnosticHlInfo',      s:diagnostics.info.sp,  'underline')
call HiSp(v:false,  'CustomDiagnosticHlHint',      s:diagnostics.hint.sp,  'underline')

" Highlighting for virtual texts
call Hi(v:false,    'DiagnosticVirtualTextError',  s:diagnostics.error.fg, s:diagnostics.error.bg, '')
call Hi(v:false,    'DiagnosticVirtualTextWarn',   s:diagnostics.warn.fg,  s:diagnostics.warn.bg,  '')
call Hi(v:false,    'DiagnosticVirtualTextInfo',   s:diagnostics.info.fg,  s:diagnostics.info.bg,  '')
call Hi(v:false,    'DiagnosticVirtualTextHint',   s:diagnostics.hint.fg,  s:diagnostics.hint.bg,  '')

" Window borders
call Hi(v:false,    'TelescopeBorder',             s:fg.0,                 'NONE',                 'NONE')
call Hi(v:false,    'CustomFloatBorder',           s:fg.0,                 'NONE',                 'NONE')

" Plugins
" indent-blankline
call Hi(v:true,     'IndentBlanklineChar',         s:bg.4,                 'NONE',                 'NONE')
call Hi(v:true,     'IndentBlanklineContextChar',  s:accent.blue.bright,   'NONE',                 'NONE')
call Hi(v:true,     'IndentBlanklineContextStart', 'NONE',                 '#C2D5FC',              'NONE')
" call HiSp(v:true, 'IndentBlanklineContextStart', s:accent.blue.bright,   'underline')

" To fix highlighting issue with indent-blankline.nvim
set colorcolumn=99999

" lightspeed.nvim
call Hi(v:false,    'LightspeedGreyWash',          s:bg.6,                 'NONE',                 'NONE')
call Hi(v:false,    'LightspeedUnlabeledMatch',    s:fg.0,                 'NONE',                 'bold')

" lualine.nvim
call Hi(v:false,    'LualineDiagnosticError',      s:diagnostics.error.fg, s:bg.4,                 'NONE')
call Hi(v:false,    'LualineDiagnosticWarn',       s:diagnostics.warn.fg,  s:bg.4,                 'NONE')
call Hi(v:false,    'LualineDiagnosticInfo',       s:diagnostics.info.fg,  s:bg.4,                 'NONE')
call Hi(v:false,    'LualineDiagnosticHint',       s:diagnostics.hint.fg,  s:bg.4,                 'NONE')

" bufferline.nvim
let g:custom_bufferline=#{
  \ fill          : #{ bg: s:bg.0 },
  \ background    : #{ bg: s:bg.4, fg: s:fg.4 },
  \ selected      : #{ bg: s:fg.0, fg: s:bg.0 },
  \ visible       : #{ bg: s:bg.6, fg: s:fg.0 },
  \ duplicate     : #{
    \ background    : #{ fg: s:bg.7 },
    \ visible       : #{ fg: s:fg.4 },
    \ selected      : #{ fg: s:bg.6 },
  \ },
  \ separator     : #{ bg: s:bg.0 },
  \ modified      : #{ background: s:fg.0, visible: s:bg.0, selected: s:bg.0 },
  \ diagnostics   : #{
    \ error         : #{ fg: s:diagnostics.error.fg },
    \ warn          : #{ fg: s:diagnostics.warn.fg },
    \ info          : #{ fg: s:diagnostics.info.fg },
    \ hint          : #{ fg: s:diagnostics.hint.fg },
  \ },
\ }

" fidget.nvim
call Hi(v:true,  'FidgetTask',          s:fg.0,                s:bg.0, 'NONE')
call Hi(v:true,  'FidgetTitle',         s:fg.0,                s:bg.0, 'bold')

" neo-tree
call Hi(v:false, 'NeoTreeRootName',     s:fg.0,                '',     'underline')
call Hi(v:false, 'NeoTreeExpander',     s:bg.7,                '',     'underline')
call Hi(v:false, 'Directory',           s:fg.0,                '',     'bold')
call Hi(v:false, 'NeoTreeFloatBorder',  s:fg.0,                '',     'NONE')
call Hi(v:false, 'NeoTreeFloatTitle',   s:fg.0,                '',     'NONE')
call Hi(v:false, 'NeoTreeGitAdded',     s:basic.green.bright,  '',     'NONE')
call Hi(v:false, 'NeoTreeGitConflict',  s:basic.orange.bright, '',     'bold,italic')
call Hi(v:false, 'NeoTreeGitDeleted',   s:basic.red.bright,    '',     'NONE')
call Hi(v:false, 'NeoTreeGitModified',  s:basic.yellow.bright, '',     'NONE')
call Hi(v:false, 'NeoTreeGitUntracked', s:basic.orange.bright, '',     'italic')
call Hi(v:false, 'NeoTreeModified',     s:basic.yellow.bright, '',     'NONE')

" Lualine
lua << EOF
lualine_theme = 'plain_light'
EOF
