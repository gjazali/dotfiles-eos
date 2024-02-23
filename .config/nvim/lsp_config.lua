-- Keymaps
local function km(...) vim.keymap.set(...) end

local p = '<leader>' -- Prefix
local km_opts = {noremap = true}
local km_opts_silent = {noremap = true, silent = true}

km('n', p .. 'e', vim.diagnostic.open_float, km_opts_silent)
km('n', '[d', vim.diagnostic.goto_prev, km_opts_silent)
km('n', ']d', vim.diagnostic.goto_next, km_opts_silent)
km('n', p .. 'q', vim.diagnostic.setloclist, km_opts_silent)

-- `on_attach` & `on_exit`
local on_attach = function(client, bufnr)
  vim.b.attached = "󰄬 LSP Attached"

  -- Buffer mappings
  local buf_opts = {noremap = true, silent = true, buffer = bufnr}

  km('n', 'gD', vim.lsp.buf.declaration, buf_opts)
  km('n', 'gd', vim.lsp.buf.definition, buf_opts)
  km('n', 'K', vim.lsp.buf.hover, buf_opts)
  km('n', 'gi', vim.lsp.buf.implementation, buf_opts)
  km('n', p .. 'k', vim.lsp.buf.signature_help, buf_opts)
  km('n', p .. 'wa', vim.lsp.buf.add_workspace_folder, buf_opts)
  km('n', p .. 'wr', vim.lsp.buf.remove_workspace_folder, buf_opts)
  km('n', p .. 'wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, buf_opts)
  km('n', p .. 'td', vim.lsp.buf.type_definition, buf_opts)
  km('n', p .. 'rn', vim.lsp.buf.rename, buf_opts)
  km('n', p .. 'aa', vim.lsp.buf.code_action, buf_opts)
  km('n', p .. 'gr', vim.lsp.buf.references, buf_opts)
  km('n', p .. 'ff', vim.lsp.buf.formatting, buf_opts)
end

local on_exit = function(code, signal, client_id)
  vim.b.attached = ""
end

-- Floating window borders
vim.cmd [[
  autocmd BufRead,FileReadPost,BufReadPre,FileReadPre *
      \ hi! link NormalFloat Normal
  autocmd BufRead,FileReadPost,BufReadPre,FileReadPre *
      \ hi! link FloatBorder CustomFloatBorder
]]

local border = {
  {"┌", "FloatBorder"},
  {"─", "FloatBorder"},
  {"┐", "FloatBorder"},
  {"│", "FloatBorder"},
  {"┘", "FloatBorder"},
  {"─", "FloatBorder"},
  {"└", "FloatBorder"},
  {"│", "FloatBorder"},
}

local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = opts.border or border
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

-- Borders for :LspInfo window
require('lspconfig.ui.windows').default_options.border = 'single'

-- Capabilities
-- Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities = {
  textDocument = {
    completion = {
      completionItem = {
        documentationFormat = {'markdown', 'plaintext'},
        snippetSupport = true,
        preselectSupport = true,
        insertReplaceSupport = true,
        labelDetailsSupport = true,
        deprecatedSupport = true,
        commitCharactersSupport = true,
        tagSupport = {valueSet = {1}},
        resolveSupport = {
          properties = {
            'documentation',
            'detail',
            'additionalTextEdits',
          },
        },
      },
    },
  },
}

-- For nvim-cmp plugin
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Set diagnostic indicators
vim.cmd [[
  hi! link DiagnosticError CustomDiagnosticTextError
  hi! link DiagnosticWarn CustomDiagnosticTextWarn
  hi! link DiagnosticInfo CustomDiagnosticTextInfo
  hi! link DiagnosticHint CustomDiagnosticTextHint

  hi link DiagnosticLineNrError DiagnosticVirtualTextError
  hi link DiagnosticLineNrWarn DiagnosticVirtualTextWarn
  hi link DiagnosticLineNrInfo DiagnosticVirtualTextInfo
  hi link DiagnosticLineNrHint DiagnosticVirtualTextHint

  sign define DiagnosticSignError
        \ text=
        \ texthl=DiagnosticSignError
        \ linehl=
        \ numhl=DiagnosticLineNrError
  sign define DiagnosticSignWarn
        \ text=
        \ texthl=DiagnosticSignWarn
        \ linehl=
        \ numhl=DiagnosticLineNrWarn
  sign define DiagnosticSignInfo
        \ text=
        \ texthl=DiagnosticSignInfo
        \ linehl=
        \ numhl=DiagnosticLineNrInfo
  sign define DiagnosticSignHint
        \ text=
        \ texthl=DiagnosticSignHint
        \ linehl=
        \ numhl=DiagnosticLineNrHint

  hi! link DiagnosticUnderlineError CustomDiagnosticHlError
  hi! link DiagnosticUnderlineWarn CustomDiagnosticHlWarn
  hi! link DiagnosticUnderlineInfo CustomDiagnosticHlInfo
  hi! link DiagnosticUnderlineHint CustomDiagnosticHlHint
]]

-- Change the character preceding the diagnostics virtual text
vim.diagnostic.config({
  virtual_text = {
    prefix = '■',
    source = "if_many",
  },
  float = {
    source = 'if_many',
  }
})

-- Stop and reload LSP client
vim.cmd [[
  function LspControl(opts)
    let accepted=[0, 1]
    let i=a:opts

    if index(accepted, i) >= 0
      lua vim.lsp.stop_client(vim.lsp.get_active_clients())

      if i==1
        sleep
        execute "LspStart"
      endif
    else
      echo "`LspControl(opts)` argument out of bounds"
    endif
  endfunction

  command LspStopClient call LspControl(0)
  command LspReloadClient call LspControl(1)
]]

-- Language servers
local lspconfig = require('lspconfig')

-- Swift and C/C++/Objective-C, server came bundled with Swift
lspconfig.sourcekit.setup {
  filetypes = {'swift', 'objective-c', 'objective-cpp'},
  capabilities = capabilities,
  on_attach = on_attach,
  on_exit = on_exit,
}
-- Java
lspconfig.jdtls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  on_exit = on_exit,
  cmd = {
    'jdtls',
    '-configuration',
    '/home/runner/.cache/jdtls/config',
    '-data',
    '/home/runner/.cache/jdtls/workspace',
  },
}
-- Lua
lspconfig.lua_ls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  on_exit = on_exit,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = {'vim'},
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file('', true),
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
}
-- NASM/GAS/GO Assembly
lspconfig.asm_lsp.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  on_exit = on_exit,
  filetypes = {'asm', 'vmasm', 's', 'S'},
}
-- Typescript/Javascript
lspconfig.tsserver.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  on_exit = on_exit,
}
-- Vim(script)
lspconfig.vimls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  on_exit = on_exit,
}
-- Bash
lspconfig.bashls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  on_exit = on_exit,
}
