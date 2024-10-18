require("bufferline").setup {
  options = {
    indicator_icon = ' ',

    numbers = function(opts)
      return string.format('[%s]', opts.ordinal)
    end,

    show_buffer_icons = false,
    sort_by = 'tabs',
    show_tab_indicators = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    modified_icon = '[+]',
    separator_style = {' ', ' '},
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = false,

    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and "  "
        or (e == "warning" and "  "
        or (e == "info" and "  " or "  "))
        s = s .. sym .. n
      end
      return s
    end,

    left_mouse_command = '',
    right_mouse_command = '',
    middle_mouse_command = '',
    close_command = '',
  },
  highlights = {
    fill = {
      bg = vim.g.custom_bufferline.fill.bg,
    },
    background = {
      bg = vim.g.custom_bufferline.background.bg,
      fg = vim.g.custom_bufferline.background.fg,
    },
    buffer_visible = {
      bg = vim.g.custom_bufferline.visible.bg,
      fg = vim.g.custom_bufferline.visible.fg,
    },
    buffer_selected = {
      bg = vim.g.custom_bufferline.selected.bg,
      fg = vim.g.custom_bufferline.selected.fg,
      bold = false,
      italic = false,
    },

    -- indicator = {
      -- bg = vim.g.custom_bufferline.background.bg,
    --},
    indicator_visible = {
      bg = vim.g.custom_bufferline.visible.bg,
    },
    indicator_selected = {
      bg = vim.g.custom_bufferline.selected.bg,
    },

    separator = {
      bg = vim.g.custom_bufferline.separator.bg,
    },

    duplicate = {
      bg = vim.g.custom_bufferline.background.bg,
      fg = vim.g.custom_bufferline.duplicate.background.fg,
      bold = false,
      italic = false,
    },
    duplicate_visible = {
      bg = vim.g.custom_bufferline.visible.bg,
      fg = vim.g.custom_bufferline.duplicate.visible.fg,
      bold = false,
      italic = false,
    },
    duplicate_selected = {
      bg = vim.g.custom_bufferline.selected.bg,
      fg = vim.g.custom_bufferline.duplicate.selected.fg,
      bold = false,
      italic = false,
    },

    tab = {
      bg = vim.g.custom_bufferline.background.bg,
      fg = vim.g.custom_bufferline.background.fg,
    },
    tab_selected = {
      bg = vim.g.custom_bufferline.selected.bg,
      fg = vim.g.custom_bufferline.selected.fg,
    },

    diagnostic = {
      bg = vim.g.custom_bufferline.background.bg,
      fg = vim.g.custom_bufferline.background.fg,
    },
    diagnostic_visible = {
      bg = vim.g.custom_bufferline.visible.bg,
      fg = vim.g.custom_bufferline.visible.fg,
    },
    diagnostic_selected = {
      bg = vim.g.custom_bufferline.selected.bg,
      fg = vim.g.custom_bufferline.selected.fg,
    },

    modified = {
      bg = vim.g.custom_bufferline.background.bg,
      fg = vim.g.custom_bufferline.modified.background,
    },
    modified_visible = {
      bg = vim.g.custom_bufferline.visible.bg,
      fg = vim.g.custom_bufferline.modified.visible,
    },
    modified_selected = {
      bg = vim.g.custom_bufferline.selected.bg,
      fg = vim.g.custom_bufferline.modified.selected,
    },

    error = {
      bg = vim.g.custom_bufferline.background.bg,
      fg = vim.g.custom_bufferline.background.fg,
    },
    error_visible = {
      bg = vim.g.custom_bufferline.visible.bg,
      fg = vim.g.custom_bufferline.visible.fg,
    },
    error_selected = {
      bg = vim.g.custom_bufferline.selected.bg,
      fg = vim.g.custom_bufferline.selected.fg,
      bold = false,
      italic = false,
    },
    error_diagnostic = {
      bg = vim.g.custom_bufferline.background.bg,
      fg = vim.g.custom_bufferline.background.fg,
      sp = vim.g.custom_bufferline.background.fg,
      bold = false,
      italic = false,
    },
    error_diagnostic_visible = {
      bg = vim.g.custom_bufferline.visible.bg,
      fg = vim.g.custom_bufferline.visible.fg,
      sp = vim.g.custom_bufferline.visible.fg,
      bold = false,
      italic = false,
    },
    error_diagnostic_selected = {
      bg = vim.g.custom_bufferline.selected.bg,
      fg = vim.g.custom_bufferline.selected.fg,
      bold = false,
      italic = false,
    },

    warning = {
      bg = vim.g.custom_bufferline.background.bg,
      fg = vim.g.custom_bufferline.background.fg,
    },
    warning_visible = {
      bg = vim.g.custom_bufferline.visible.bg,
      fg = vim.g.custom_bufferline.visible.fg,
    },
    warning_selected = {
      bg = vim.g.custom_bufferline.selected.bg,
      fg = vim.g.custom_bufferline.selected.fg,
      bold = false,
      italic = false,
    },
    warning_diagnostic = {
      bg = vim.g.custom_bufferline.background.bg,
      fg = vim.g.custom_bufferline.background.fg,
      sp = vim.g.custom_bufferline.background.fg,
      bold = false,
      italic = false,
    },
    warning_diagnostic_visible = {
      bg = vim.g.custom_bufferline.visible.bg,
      fg = vim.g.custom_bufferline.visible.fg,
      sp = vim.g.custom_bufferline.visible.fg,
      bold = false,
      italic = false,
    },
    warning_diagnostic_selected = {
      bg = vim.g.custom_bufferline.selected.bg,
      fg = vim.g.custom_bufferline.selected.fg,
      bold = false,
      italic = false,
    },

    info = {
      bg = vim.g.custom_bufferline.background.bg,
      fg = vim.g.custom_bufferline.background.fg,
    },
    info_visible = {
      bg = vim.g.custom_bufferline.visible.bg,
      fg = vim.g.custom_bufferline.visible.fg,
    },
    info_selected = {
      bg = vim.g.custom_bufferline.selected.bg,
      fg = vim.g.custom_bufferline.selected.fg,
      bold = false,
      italic = false,
    },
    info_diagnostic = {
      bg = vim.g.custom_bufferline.background.bg,
      fg = vim.g.custom_bufferline.background.fg,
      sp = vim.g.custom_bufferline.background.fg,
      bold = false,
      italic = false,
    },
    info_diagnostic_visible = {
      bg = vim.g.custom_bufferline.visible.bg,
      fg = vim.g.custom_bufferline.visible.fg,
      sp = vim.g.custom_bufferline.visible.fg,
      bold = false,
      italic = false,
    },
    info_diagnostic_selected = {
      bg = vim.g.custom_bufferline.selected.bg,
      fg = vim.g.custom_bufferline.selected.fg,
      bold = false,
      italic = false,
    },

    hint = {
      bg = vim.g.custom_bufferline.background.bg,
      fg = vim.g.custom_bufferline.background.fg,
    },
    hint_visible = {
      bg = vim.g.custom_bufferline.visible.bg,
      fg = vim.g.custom_bufferline.visible.fg,
    },
    hint_selected = {
      bg = vim.g.custom_bufferline.selected.bg,
      fg = vim.g.custom_bufferline.selected.fg,
      bold = false,
      italic = false,
    },
    hint_diagnostic = {
      bg = vim.g.custom_bufferline.background.bg,
      fg = vim.g.custom_bufferline.background.fg,
      sp = vim.g.custom_bufferline.background.fg,
      bold = false,
      italic = false,
    },
    hint_diagnostic_visible = {
      bg = vim.g.custom_bufferline.visible.bg,
      fg = vim.g.custom_bufferline.visible.fg,
      bold = false,
      italic = false,
    },
    hint_diagnostic_selected = {
      bg = vim.g.custom_bufferline.selected.bg,
      fg = vim.g.custom_bufferline.selected.fg,
      bold = false,
      italic = false,
    },
    numbers = {
      bg = vim.g.custom_bufferline.background.bg,
      fg = vim.g.custom_bufferline.background.fg,
      bold = false,
      italic = false,
    },
    numbers_visible = {
      bg = vim.g.custom_bufferline.visible.bg,
      fg = vim.g.custom_bufferline.visible.fg,
      bold = false,
      italic = false,
    },
    numbers_selected = {
      bg = vim.g.custom_bufferline.selected.bg,
      fg = vim.g.custom_bufferline.selected.fg,
      bold = false,
      italic = false,
    },
  }
}
