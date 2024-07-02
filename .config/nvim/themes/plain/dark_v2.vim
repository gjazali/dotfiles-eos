let s:fg=#{
  \ 0: '#FFFFFF',
  \ 1: '#F4F4F4',
  \ 2: '#E8E8E8',
  \ 3: '#DDDDDD',
  \ 4: '#D1D1D1',
\ }
let s:bg=#{
  \ 0: '#000000',
  \ 1: '#141415',
  \ 2: '#282929',
  \ 3: '#3C3D3E',
  \ 4: '#4F5153',
  \ 5: '#636568',
  \ 6: '#777A7C',
  \ 7: '#8B8E91',
\ }

let s:comment=#{
  \ distinct  : '#007FFF',
  \ neutral   : '#003A74',
\ }
let s:basic=#{
  \ red       : #{
    \ bright    : '#e85468',
    \ medium    : '#541F26',
    \ dim       : '#2A0F13',
  \ },
  \ green     : #{
    \ bright    : '#54ca83',
    \ medium    : '#1F4930',
    \ dim       : '#0F2518',
  \ },
  \ orange    : #{
    \ bright    : '#faa128',
    \ medium    : '#5B3B0F',
    \ dim       : '#2D1D07',
  \ },
  \ yellow    : #{
    \ bright    : '#edda53',
    \ medium    : '#564F1E',
    \ dim       : '#2B280F',
  \ },
  \ blue      : #{
    \ bright    : '#007FFF',
    \ medium    : '#002E5D',
    \ dim       : '#00172E',
  \ },
  \ cyan      : #{
    \ bright    : '#70E1E8',
    \ medium    : '#295254',
    \ dim       : '#14292A',
  \ },
  \ magenta   : #{
    \ bright    : '#FF80FF',
    \ medium    : '#5D2F5D',
    \ dim       : '#2E172E',
  \ },
  \ pink   : #{
    \ bright    : '#ff85b0',
    \ medium    : '#5D3040',
    \ dim       : '#2E1820',
  \ },
  \ grey   : #{
    \ bright    : '#718CA1',
    \ medium    : '#29333B',
    \ dim       : '#15191D',
  \ },
\ }
let s:diagnostics=#{
  \ error  : #{
    \ sp        : '#e85468',
    \ fg        : '#e85468',
    \ bg        : '#2A0F13',
  \ },
  \ warn   : #{
    \ sp        : '#edda53',
    \ fg        : '#edda53',
    \ bg        : '#2B280F',
  \ },
  \ info   : #{
    \ sp        : '#70E1E8',
    \ fg        : '#70E1E8',
    \ bg        : '#14292A',
  \ },
  \ hint   : #{
    \ sp        : '#FFFFFF',
    \ fg        : '#FFFFFF',
    \ bg        : '#2E2E2E',
  \ },
\ }
let s:accent=#{
  \ blue   : #{
    \ bright    : '#007FFF',
    \ medium    : '#002E5D',
    \ dim       : '#00172E',
  \ },
  \ purple : #{
    \ bright    : '#008B94',
    \ medium    : '#003F43',
    \ dim       : '#002628',
  \ },
  \ dark : #{
    \ bright    : '#002346',
    \ medium    : '#00152A',
    \ dim       : '#001122',
  \ },
\ }

" Syntax
let g:syntax_hi=#{
  \ Constant       : [s:fg.2,         'NONE', 'NONE'],
  \ String         : [s:fg.0,         'NONE', 'NONE'],
  \ Character      : [s:fg.0,         'NONE', 'NONE'],
  \ Number         : [s:fg.2,         'NONE', 'NONE'],
  \ Boolean        : [s:fg.0,         'NONE', 'bold'],
  \ Float          : [s:fg.2,         'NONE', 'NONE'],
  \ Identifier     : [s:fg.4,         'NONE', 'NONE'],
  \ Function       : [s:fg.4,         'NONE', 'NONE'],
  \ Statement      : [s:fg.0,         'NONE', 'bold'],
  \ Conditional    : [s:fg.0,         'NONE', 'bold'],
  \ Repeat         : [s:fg.0,         'NONE', 'bold'],
  \ Label          : [s:fg.0,         'NONE', 'bold'],
  \ Operator       : [s:fg.0,         'NONE', 'NONE'],
  \ Keyword        : [s:fg.0,         'NONE', 'bold'],
  \ Exception      : [s:fg.0,         'NONE', 'bold'],
  \ PreProc        : [s:fg.1,         'NONE', 'NONE'],
  \ Include        : [s:fg.1,         'NONE', 'NONE'],
  \ Define         : [s:fg.1,         'NONE', 'NONE'],
  \ Macro          : [s:fg.1,         'NONE', 'NONE'],
  \ PreCondit      : [s:fg.1,         'NONE', 'NONE'],
  \ Type           : [s:fg.2,         'NONE', 'NONE'],
  \ StorageClass   : [s:fg.2,         'NONE', 'NONE'],
  \ Structure      : [s:fg.2,         'NONE', 'NONE'],
  \ Typedef        : [s:fg.2,         'NONE', 'NONE'],
  \ Special        : [s:fg.0,         'NONE', 'NONE'],
  \ SpecialChar    : [s:fg.0,         'NONE', 'NONE'],
  \ Tag            : [s:fg.0,         'NONE', 'NONE'],
  \ Delimiter      : [s:fg.0,         'NONE', 'NONE'],
  \ SpecialComment : [s:fg.4,         'NONE', 'NONE'],
  \ Debug          : [s:fg.0,         'NONE', 'NONE'],
  \ Underlined     : [s:fg.3,         'NONE', 'underline'],
  \ TSPunctBracket : [s:fg.0,         'NONE', 'NONE'],
  \ Title          : [s:fg.0,         'NONE', 'NONE'],
  \ Comment        : [s:comment.distinct, 'NONE', 'NONE'],
\ }

" General
" Normal
call Hi(v:true,    'Normal',                s:fg.0,                 'NONE',                 'NONE')

" Comments
call Hi(v:true,    'Comment',               '',                     '',                     'NONE')

" Menu
call Hi(v:false,   'Pmenu',                 s:fg.2,                 s:accent.dark.dim,      'NONE')
call Hi(v:false,   'PmenuSel',              s:accent.dark.dim,      s:fg.0,                 'NONE')
call Hi(v:false,   'PmenuSbar',             '',                     s:bg.3,                 'NONE')
call Hi(v:false,   'PmenuThumb',            '',                     s:fg.4,                 'NONE')
call Hi(v:false,   'CmpItemKind',           s:accent.blue.bright,   'NONE',                 'NONE')
call Hi(v:false,   'CmpItemAbbr',           s:fg.2,                 '',                     'NONE')
call Hi(v:false,   'CmpItemAbbrDeprecated', s:basic.orange.medium,  '',                     'NONE')
call Hi(v:false,   'CmpItemAbbrMatch',      s:fg.0,                 '',                     'NONE')
call Hi(v:false,   'CmpItemAbbrMatchFuzzy', s:fg.0,                 '',                     'underline')
call Hi(v:false,   'CmpItemMenu',           s:fg.4,                 '',                     'NONE')

" Cursor when not overridden by terminal's config
call Hi(v:true,    'Cursor',                s:fg.0,                 s:accent.blue.bright,   'NONE')

" Cursor line
hi clear CursorLine
call Hi(v:false,   'CursorLine',            '',                     s:accent.dark.bright,   '')
call Hi(v:false,   'CursorLineNr',          s:basic.blue.bright,    s:accent.dark.bright,   'NONE')

" Matching braces
hi clear MatchParen
call Hi(v:true,    'MatchParen',            '',                     s:accent.blue.medium,      'NONE')

" Remove sign column and fold column background colour
call Hi(v:false,   'SignColumn',            '',                     'NONE',                 'NONE')
call Hi(v:false,   'FoldColumn',            '',                     'NONE',                 'NONE')
call Hi(v:false,   'LineNr',                s:bg.4,                 'NONE',                 '')

" ColorColumn
call Hi(v:true,    'ColorColumn',           'NONE',                 s:accent.dark.medium,   'NONE')

" Visual mode
hi clear Visual
call Hi(v:false,   'Visual',                '',                     s:accent.blue.medium,   '')

hi clear VisualNOS
call Hi(v:false,   'VisualNOS',             '',                     s:accent.blue.dim,      '')

" Search highlight
call Hi(v:false,   'IncSearch',             'NONE',                 s:accent.purple.medium, 'NONE')
call Hi(v:false,   'Search',                'NONE',                 s:accent.purple.dim,    'NONE')
call Hi(v:false,   'Substitute',            s:fg.0,                 s:accent.blue.bright,   'NONE')

" Splits
call Hi(v:false,   'VertSplit',             s:bg.2,                 s:bg.2,                 'NONE')
call Hi(v:false,   'StatusLine',            s:bg.2,                 s:bg.2,                 'NONE')
call Hi(v:false,   'StatusLineNC',          s:bg.2,                 s:bg.2,                 'NONE')

" End-of-buffer character
call Hi(v:false,   'EndOfBuffer',           s:bg.4,                 'NONE',                 'NONE')

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

call Hi(v:true,    'DiffText',              s:fg.1,                 s:basic.blue.medium,    'NONE')

call Hi(v:true,    'diffFile',              s:fg.1,                 '',                     'bold')
call Hi(v:true,    'diffLine',              s:basic.grey.bright,    'NONE',                 '')
call Hi(v:true,    'diffIndexLine',         s:basic.pink.bright,    'NONE',                 '')

" Neovim health
call Hi(v:false,   'healthError',           s:basic.red.bright,     '',                     '')
call Hi(v:false,   'healthSuccess',         s:basic.green.bright,   '',                     '')
call Hi(v:false,   'healthWarning',         s:basic.yellow.bright,  '',                     '')

" Errors, warnings, etc.
call Hi(v:false,   'Error',                 'NONE',                 'NONE',                 'NONE')
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
call Hi(v:false,   'Question',              s:basic.blue.bright,    'NONE',                 'NONE')
"call Hi(v:false,   'Title',                 s:basic.blue.bright,   'NONE',                 'NONE')
call Hi(v:false,   'Todo',                  s:bg.0,                 s:basic.blue.bright,    'NONE')
call Hi(v:false,   'SpecialKey',            s:basic.blue.bright,    'NONE',                 'NONE')

au FileType help hi! link Todo Normal

" LSP diagnostics
" Foreground colours
call Hi(v:false,   'CustomDiagnosticTextError',  s:diagnostics.error.fg, '',                     '')
call Hi(v:false,   'CustomDiagnosticTextWarn',   s:diagnostics.warn.fg,  '',                     '')
call Hi(v:false,   'CustomDiagnosticTextInfo',   s:diagnostics.info.fg,  '',                     '')
call Hi(v:false,   'CustomDiagnosticTextHint',   s:diagnostics.hint.fg,  '',                     '')

" Background colours; slightly brighter than `LspDiagnosticsVirtualTextError`
" `guibg`
call HiSp(v:false, 'CustomDiagnosticHlError',    s:diagnostics.error.sp, 'underline')
call HiSp(v:false, 'CustomDiagnosticHlWarn',     s:diagnostics.warn.sp,  'underline')
call HiSp(v:false, 'CustomDiagnosticHlInfo',     s:diagnostics.info.sp,  'underline')
call HiSp(v:false, 'CustomDiagnosticHlHint',     s:diagnostics.hint.sp,  'underline')

" In-line diagnostics
call Hi(v:false, 'DiagnosticUnnecessary',   '', 'NONE', '')
call HiSp(v:false, 'DiagnosticUnnecessary', '', 'underdotted')

" Highlighting for virtual texts
call Hi(v:false,   'DiagnosticVirtualTextError', s:diagnostics.error.fg, s:diagnostics.error.bg, '')
call Hi(v:false,   'DiagnosticVirtualTextWarn',  s:diagnostics.warn.fg,  s:diagnostics.warn.bg,  '')
call Hi(v:false,   'DiagnosticVirtualTextInfo',  s:diagnostics.info.fg,  s:diagnostics.info.bg,  '')
call Hi(v:false,   'DiagnosticVirtualTextHint',  s:diagnostics.hint.fg,  s:diagnostics.hint.bg,  '')

" Window borders
call Hi(v:false, 'TelescopeBorder',        s:bg.4,                 'NONE', 'NONE')
call Hi(v:false, 'CustomFloatBorder',      s:bg.4,                 'NONE', 'NONE')

" Plugins
" indent-blankline
call Hi(v:true,  'IblIndent',              s:basic.grey.dim,       'NONE', 'NONE')

" To fix highlighting issue with indent-blankline.nvim
set colorcolumn=99999

" lightspeed.nvim
call Hi(v:false, 'LightspeedGreyWash',     s:bg.6,                 'NONE', 'NONE')

" leap.nvim
call Hi(v:false, 'LeapLabelPrimary',       s:bg.0,                 s:basic.magenta.bright, 'nocombine,bold')
call Hi(v:false, 'LeapLabelSecondary',     s:bg.0,                 s:basic.cyan.bright,    'nocombine,bold')
call Hi(v:false, 'LeapMatch',              s:basic.magenta.bright, '',                     'underline,nocombine')

" Rainbow Parenthese
"call Hi(v:true,  'rainbowParensShell16',   s:basic.magenta.bright, 'NONE', 'NONE')
"call Hi(v:true,  'rainbowParensShell15',   s:basic.yellow.bright,  'NONE', 'NONE')
"call Hi(v:true,  'rainbowParensShell14',   s:basic.cyan.bright,    'NONE', 'NONE')
"call Hi(v:true,  'rainbowParensShell13',   s:basic.orange.bright,  'NONE', 'NONE')
"call Hi(v:true,  'rainbowParensShell12',   s:basic.blue.bright,    'NONE', 'NONE')
"call Hi(v:true,  'rainbowParensShell11',   s:basic.green.bright,   'NONE', 'NONE')
"call Hi(v:true,  'rainbowParensShell10',   s:basic.red.bright,     'NONE', 'NONE')
"call Hi(v:true,  'rainbowParensShell9',    s:basic.magenta.bright, 'NONE', 'NONE')
"call Hi(v:true,  'rainbowParensShell8',    s:basic.yellow.bright,  'NONE', 'NONE')
"call Hi(v:true,  'rainbowParensShell7',    s:basic.cyan.bright,    'NONE', 'NONE')
"call Hi(v:true,  'rainbowParensShell6',    s:basic.orange.bright,  'NONE', 'NONE')
"call Hi(v:true,  'rainbowParensShell5',    s:basic.blue.bright,    'NONE', 'NONE')
"call Hi(v:true,  'rainbowParensShell4',    s:basic.green.bright,   'NONE', 'NONE')
"call Hi(v:true,  'rainbowParensShell3',    s:basic.red.bright,     'NONE', 'NONE')
"call Hi(v:true,  'rainbowParensShell2',    s:basic.magenta.bright, 'NONE', 'NONE')
"call Hi(v:true,  'rainbowParensShell1',    s:basic.yellow.bright,  'NONE', 'NONE')

" lualine.nvim
call Hi(v:false, 'LualineDiagnosticError', s:diagnostics.error.fg, s:bg.2, 'NONE')
call Hi(v:false, 'LualineDiagnosticWarn',  s:diagnostics.warn.fg,  s:bg.2, 'NONE')
call Hi(v:false, 'LualineDiagnosticInfo',  s:diagnostics.info.fg,  s:bg.2, 'NONE')
call Hi(v:false, 'LualineDiagnosticHint',  s:diagnostics.hint.fg,  s:bg.2, 'NONE')

" bufferline.nvim
let g:custom_bufferline=#{
  \ fill          : #{ bg: s:bg.0 },
  \ background    : #{ bg: s:bg.2, fg: s:fg.4 },
  \ selected      : #{ bg: s:fg.0, fg: s:bg.0 },
  \ visible       : #{ bg: s:bg.4, fg: s:fg.0 },
  \ duplicate     : #{
    \ background    : #{ fg: s:bg.5 },
    \ visible       : #{ fg: s:fg.3 },
    \ selected      : #{ fg: s:bg.6 },
  \ },
  \ separator     : #{ bg: s:bg.0 },
  \ modified      : #{ background: s:fg.0, visible: s:fg.0, selected: s:bg.0 },
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
lualine_theme = 'plain_dark_v2'
EOF
