require('lualine').setup {
  options = {
    theme = lualine_theme,
    section_separators = '',
    component_separators = {left = '│', right = '│'},
    disabled_filetypes = {'neo-tree'},
  },
  sections = {
    lualine_b = {
      {
        'branch',
        icon = '',
      },
      {'filename'},
    },
    lualine_c = {
      {'b:attached'},
      {
        'diagnostics',

        sources = {'nvim_diagnostic'},

        sections = {'error', 'warn', 'info', 'hint'},

        diagnostics_color = {
          error = 'LualineDiagnosticError',
          warn = 'LualineDiagnosticWarn',
          info = 'LualineDiagnosticInfo',
          hint = 'LualineDiagnosticHint',
        },

        symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '},
      },
    },
    lualine_x = {'encoding', {'filetype', colored = false}},
  },
}
