local function km(...) vim.keymap.set(...) end
local p = '<leader>' -- Prefix
local km_opts = {noremap = true}

-- leap.nvim
require('leap').create_default_mappings()

-- treesitter
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {'zsh', 'vim', 'markdown'},
  },
  indent = {
    enable = false,
  },
}

-- nvim-ts-autotag
--require'nvim-ts-autotag'.setup {
  --filetypes = {
    --'html',
    --'javascript',
    --'javascriptreact',
    --'typescriptreact',
    --'svelte',
    --'vue',
    --'markdown'
  --},
--}

-- gitsigns
require('gitsigns').setup {
  signs = {
    add = { text = '┃' },
    change = { text = '┃' },
    delete = { text = '╽' },
    topdelete = { text = '╿' },
    changedelete = { text = '┇' },
  }
}

-- Shortcuts
vim.cmd [[
  cnoreabbrev <expr> gs ((getcmdtype() is# ':' && getcmdline() is#
        \ 'gs')?('Gitsigns'):('gs'))
  cnoreabbrev <expr> gsh ((getcmdtype() is# ':' && getcmdline() is#
        \ 'gsh')?('Gitsigns stage_hunk'):('gsh'))
]]

-- bufferline.nvim
-- bufferline.nvim is configured in another file:
-- ~/.config/nvim/bufferline_config.lua

-- telescope.nvim
require('telescope').setup {
  defaults = {
    borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
      --preview = {
        --treesitter = false
      --},
  },
}

km('n', '<Space>ff', '<cmd>Telescope find_files<CR>', km_opts)
km('n', '<Space>fi', '<cmd>Telescope git_files<CR>', km_opts)
km('n', '<Space>fg', '<cmd>Telescope live_grep<CR>', km_opts)
km('n', '<Space>fs', '<cmd>Telescope grep_string<CR>', km_opts)
km('n', '<Space>fb', '<cmd>Telescope buffers<CR>', km_opts)
km('n', '<Space>fz', '<cmd>Telescope current_buffer_fuzzy_find<CR>', km_opts)

km('n', '<Space>sm', '<cmd>Telescope marks<CR>', km_opts)
km('n', '<Space>sr', '<cmd>Telescope registers<CR>', km_opts)
km('n', '<Space>ss', '<cmd>Telescope spell_suggest<CR>', km_opts)
km('n', '<Space>sk', '<cmd>Telescope keymaps<CR>', km_opts)
km('n', '<Space>sh', '<cmd>Telescope help_tags<CR>', km_opts)

km('n', '<Space>dd', '<cmd>Telescope diagnostics<CR>', km_opts)
km('n', '<Space>db', '<cmd>Telescope diagnostics bufnr=0<CR>', km_opts)
km('n', '<Space>di', '<cmd>Telescope lsp_implementations<CR>', km_opts)
km('n', '<Space>df', '<cmd>Telescope lsp_definitions<CR>', km_opts)
km('n', '<Space>dt', '<cmd>Telescope lsp_type_definitions<CR>', km_opts)

km('n', '<Space>a', '<cmd>Telescope treesitter<CR>', km_opts)

km('n', '<Space>gs', '<cmd>Telescope git_status<CR>', km_opts)

-- telescope-fzffz-native.nvim
require('telescope').load_extension('fzf')

-- nvim-web-devicons
require'nvim-web-devicons'.setup {
  override = {
    java = {
      icon = "",
      color = "#FFA14A",
      name = "java",
    }
  }
}

-- lualine
-- Lualine is configured in another file:
-- ~/.config/nvim/lualine_config.lua

-- trouble.nvim
require('trouble').setup {
  signs = {
    error = "",
    warning = "",
    hint = "󰌵",
    information = "",
    other = ""
  },
}

km('n', p .. 'xx', '<cmd>TroubleToggle<CR>', km_opts)
km('n', p .. 'xw', '<cmd>TroubleToggle lsp_workspace_diagnostics<CR>', km_opts)
km('n', p .. 'xd', '<cmd>TroubleToggle lsp_document_diagnostics<CR>', km_opts)
km('n', p .. 'xq', '<cmd>TroubleToggle quickfix<CR>', km_opts)
km('n', p .. 'xl', '<cmd>TroubleToggle loclist<CR>', km_opts)
km('n', p .. 'gR', '<cmd>TroubleToggle lsp_references<CR>', km_opts)

-- indent-blankline
--require('ibl').setup {
  --indent = { char = "│" }
--}

-- luasnip
local luasnip = require('luasnip')

luasnip.add_snippets(nil, {
  all = {
    luasnip.snippet({
      trig = 'date',
      namr = 'Date',
      dscr = 'YYYY-MM-DD date'
    }, {
      luasnip.function_node(function() return { os.date('%Y-%m-%d') } end, {})
    }),

    luasnip.snippet({
      trig = 'textemplate',
      namr = 'Personal TeX Document Template',
      dscr = 'A TeX `article` document template that includes all the packages and configurations I use the most.'
    }, {
      luasnip.text_node({
      '\\documentclass{article}',
      '\\usepackage{graphicx}',
      '\\graphicspath{{./img/}} % Images has to be under `./img/`; otherwise, change the path here',
      '\\usepackage{float}',
      '\\usepackage{multicol}',
      '\\usepackage{titlesec}',
      '\\usepackage[a4paper, margin=0.8in]{geometry}',
      '\\usepackage{verbatim}',
      '\\usepackage{amsmath}',
      '\\usepackage{amssymb}',
      '\\usepackage{bm} % For bold Greek math symbols, e.g., `\\omega`',
      '\\usepackage{underscore} % To avoid the need for escaping underscores in text mode',
      '\\usepackage{enumitem}',
      '\\usepackage{soul} % For strikethroughs',
      '\\usepackage{array} % For better table corners',
      '%\\usepackage[hidelinks]{hyperref}',
      '\\usepackage{hyperref}',
      '\\hypersetup{colorlinks=true, citecolor=blue}',
      '\\usepackage[dvipsnames]{xcolor}',
      '\\usepackage[font=footnotesize,labelfont=bf,labelsep=period]{caption}',
      '\\usepackage{mlmodern} % A slightly thicker version of CM',
      '\\interfootnotelinepenalty=10000',
      '%\\usepackage{inconsolata}',
      '\\usepackage[T1]{fontenc}',
      '\\usepackage{listings}',
      '\\lstset{%',
      '  basicstyle=\\ttfamily,',
      '  columns=fullflexible,',
      '  emphstyle=\\color{red},',
      '  literate={~}{{\\fontfamily{ptm}\\selectfont \\textasciitilde}}1',
      '}', '',
      '\\title{'}), luasnip.insert_node(1, 'title'), luasnip.text_node({' \\\\ \\large \\textit{'}), luasnip.insert_node(2, 'subtitle'), luasnip.text_node({'}}',
      '\\author{Ghazali Ahlam Jazali\\\\ \\href{mailto:academic@jazali.org}{\\texttt{academic@jazali.org}}}', '',
      '\\date{'}), luasnip.function_node(function() return { os.date('%d %B %Y') } end, {}), luasnip.text_node({'}', '',
      '\\begin{document}', '',
      '\\maketitle', '',
      '\\tableofcontents', '',
      '\\end{document}'})
    }),

    luasnip.snippet({
      trig = 'texlstlisting',
      namr = '`lstlisting` Block',
      dscr = 'A detailed `lstlisting` block that includes the following properties: `title`, `emph`, `alsoletter`, `keepspaces`, and `upquote`.'
    }, {
      luasnip.text_node({
      '\\begin{lstlisting}[title='}), luasnip.insert_node(1, ''), luasnip.text_node({', emph={'}), luasnip.insert_node(2, ''), luasnip.text_node({'}, alsoletter={'}), luasnip.insert_node(3, ''), luasnip.text_node({'}, alsoother={'}), luasnip.insert_node(4, ''), luasnip.text_node({'}, keepspaces=true, upquote=true, escapechar=&]',
      '  '}),
      luasnip.text_node({'', '\\end{lstlisting}'})
    }),

    luasnip.snippet({
      trig = 'textable',
      namr = '`table` Block',
      dscr = 'A pre-formatted `table` block with two columns and four rows, where the two columns of the first row are merged.'
    }, {
      luasnip.text_node({
      '\\begin{table}[H]',
      '  \\centering',
      '  \\caption{}',
      '  %\\label{tbl:}',
      '  \\begin{tabular}{|l|l|}',
      '    \\hline',
      '    \\multicolumn{2}{|c|}{}\\\\ \\hline\\hline',
      '    \\multicolumn{1}{|l|}{} & \\\\ \\hline',
      '    \\multicolumn{1}{|l|}{} & \\\\ \\hline',
      '    \\multicolumn{1}{|l|}{} & \\\\ \\hline',
      '  \\end{tabular}',
      '\\end{table}'
      }),
    }),

    luasnip.snippet({
      trig = 'texfig',
      namr = '`figure` Block',
      dscr = 'A pre-formatted `figure` block.'
    }, {
      luasnip.text_node({
      '\\begin{figure}[H]',
      '  \\centering',
      '  \\includegraphics[width=0.5\\textwidth]{}',
      '  \\caption{}',
      '  %\\label{fig:}',
      '\\end{figure}'
      }),
    }),

    luasnip.snippet({
      trig = 'texmulticols',
      namr = '`multicols` Block',
      dscr = 'A pre-formatted `multicols` block for three `figure`s. Put the `figure`s outside the `multicols` block to use positioning arguments like `H`.'
    }, {
      luasnip.text_node({
      '\\begin{multicols}{3}',
      '  \\begin{figure}[H] %\\label{fig:}',
      '    \\centering',
      '    \\includegraphics[width=0.3\\textwidth]{}',
      '    \\caption{}',
      '  \\end{figure}',
      '  \\columnbreak',
      '  \\begin{figure}[H] %\\label{fig:}',
      '    \\centering',
      '    \\includegraphics[width=0.3\\textwidth]{}',
      '    \\caption{}',
      '  \\end{figure}',
      '  \\columnbreak',
      '  \\begin{figure}[H] %\\label{fig:}',
      '    \\centering',
      '    \\includegraphics[width=0.3\\textwidth]{}',
      '    \\caption{}',
      '  \\end{figure}',
      '\\end{multicols}'
      }),
    }),
  }
})

-- Use VSCode snippets
--require('luasnip.loaders.from_vscode').lazy_load()

-- Auto-completion & snippets
-- Kind icons
local kind_icons = {
  Text = "",
  Method = "",
  Function = "󰊕",
  Constructor = "",
  Field = "",
  Variable = "󰫧",
  Class = "",
  Interface = "󱦜",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = ""
}

-- Menu item source names
local menu_item_sources = {
  buffer = "Buffer",
  nvim_lsp = "LSP",
  luasnip = "LuaSnip",
  calc = "Calc",
  path = "Path",
  nvim_lua = "Lua",
  latex_symbols = "LaTeX",
}

local cmp = require('cmp')

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-y>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<C-j>'] = cmp.mapping.scroll_docs(4),
    ['<C-k>'] = cmp.mapping.scroll_docs(-4),
    ['<C-x>'] = cmp.mapping.close(),
  },
  sources = {
    {name = 'nvim_lsp'},
    {name = 'buffer'},
    {name = 'luasnip'},
    --{name = 'calc'},
    {name = 'path'},
    {name = 'latex_symbols'}
  },
  formatting = {
    format = function(entry, vim_item)
      -- Kind icons
      vim_item.kind = string.format(
      '%s %s',
      kind_icons[vim_item.kind],
      vim_item.kind
      )
      -- Menu item source names
      vim_item.menu = string.format(
      '[%s]',
      menu_item_sources[entry.source.name]
      )

      return vim_item
    end
  },
  window = {
    documentation = {
      border = 'single',
    }
  },
}

-- neo-tree
--require('neo-tree').setup {
  --close_if_last_window = true,
  --popup_border_style = 'single',
  --enable_git_status = true,
  --enable_diagnostics = false,
  --default_component_configs = {
    --indent = {
      --indent_size = 2,
      --padding = 1,
      --with_markers = true,
      --indent_marker = '│',
      --last_indent_marker = '└',
      --highlight = 'IndentBlanklineChar',
      --with_expanders = true,
      --expander_collapsed = '',
      --expander_expanded = '',
      --expander_highlight = 'NeoTreeIndentMarker'
    --},
    --icon = {
      --default = '',
    --},
    --modified = {
      --symbol = '[+] '
    --},
    --git_status = {
      --symbols = {
        --added = ' ',
        --modified = ' ',
        --deleted = ' ',
        --renamed = ' ',
        --untracked = ' ',
        --ignored = ' ',
        --unstaged = ' ',
        --staged = ' ',
        --conflict = ' ',
      --},
    --},
  --},
  --window = {
    --mappings = {
      --['o'] = 'open',
      --['s'] = 'open_split',
      --['v'] = 'open_vsplit',
      --['t'] = 'open_tabnew',
      --['a'] = 'add',
      --['A'] = 'add_directory',
      --['d'] = 'delete',
      --['r'] = 'rename',
      --['y'] = 'copy_to_clipboard',
      --['x'] = 'cut_to_clipboard',
      --['p'] = 'paste_from_clipboard',
      --['c'] = 'copy',
      --['m'] = 'move',
      --['q'] = 'close_window',
      --['R'] = 'refresh',
      --['?'] = 'show_help',
      --['<'] = 'prev_source',
      --['>'] = 'next_source',
    --},
  --},
  --filesystem = {
    --hijack_netrw_behavior = 'open_default',
    --window = {
      --mappings = {
        --['<BS>'] = 'navigate_up',
        --['<CR>'] = 'set_root',
        --['.'] = 'toggle_hidden',
        --['/'] = 'fuzzy_finder',
        --['D'] = 'fuzzy_finder_directory',
        --['f'] = 'filter_on_submit',
        --['<C-x>'] = 'clear_filter',
        --['[g'] = 'prev_git_modified',
        --[']g'] = 'next_git_modified',
      --},
    --},
  --},
  --git_status = {
    --window = {
      --position = 'float',
      --mappings = {
        --['gA'] = 'git_add_all',
        --['ga'] = 'git_add_file',
        --['gu'] = 'git_unstage_file',
        --['gr'] = 'git_revert_file',
        --['gc'] = 'git_commit',
        --['gp'] = 'git_push',
        --['gg'] = 'git_commit_and_push',
      --}
    --}
  --}
--}

--km('n', '<Space>bo', '<cmd>Neotree show<CR>', km_opts)
--km('n', '<Space>bc', '<cmd>Neotree close<CR>', km_opts)
--km('n', '<Space>bt', '<cmd>Neotree show toggle<CR>', km_opts)
--km('n', '<Space>bl', '<cmd>Neotree left<CR>', km_opts)
--km('n', '<Space>br', '<cmd>Neotree right<CR>', km_opts)
--km('n', '<Space>bf', '<cmd>Neotree float<CR>', km_opts)
--km('n', '<Space>bv', '<cmd>Neotree float toggle<CR>', km_opts)
--km('n', '<Space>bg', '<cmd>Neotree focus<CR>', km_opts)
