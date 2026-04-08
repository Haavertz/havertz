return {
  {
    "mason-org/mason.nvim",
    opts = {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            },
        },
    },
    config = function()
        require('mason').setup()
    end,
  },
  {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',
    build = "cargo build --release",
    opts = {
      
      -- See :h blink-cmp-config-keymap for defining your own keymap
      keymap = {

        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },

        ["<CR>"] = { "accept", "fallback" },

        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },

        ["<C-e>"] = { "hide", "fallback" },

        ["<C-n>"] = { "select_next", "fallback" },
        ["<C-p>"] = { "select_prev", "fallback" },
      },


      appearance = {
        -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        nerd_font_variant = 'mono'
      },

      completion = {
        trigger = {
          show_on_keyword = false,
          show_on_trigger_character = true,
        },
        documentation = {
          auto_show = false,
        },
      },

      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },

      fuzzy = { implementation = "prefer_rust_with_warning" }
    },
    opts_extend = { "sources.default" }
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "saghen/blink.cmp" },

    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()
      vim.lsp.config('*', {
            capabilities = capabilities,
      })

      -- local augroup = vim.api.nvim_create_augroup("LspDiagnosticsHold", { clear = true })
      -- local virtual_text_enabled = true
      -- vim.o.updatetime = 350

      -- Configure and enable LSP servers
      -- lua_ls
      vim.lsp.config("lua_ls", {
        settings = {
            Lua = {
                diagnostics = {
                    globals = { "vim" },
                },
                completion = {
                    callSnippet = "Replace",
                },
                workspace = {
                    library = {
                        [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                        [vim.fn.stdpath("config") .. "/lua"] = true,
                    },
                },
            },
        },
      })

      -- pyright
      vim.lsp.config("pyright", {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            }, 
            completion = {
              callSnippet = "Replace",
            },
          }
        }
      })

      -- emmet_language_server
      vim.lsp.config("emmet_language_server", {
          filetypes = {
              "css",
              "html",
              "javascript",
              "javascriptreact",
              "less",
              "sass",
              "scss",
              "typescriptreact",
              "sql",
          },
          init_options = {
              includeLanguages = {},
              excludeLanguages = {},
              extensionsPath = {},
              preferences = {},
              showAbbreviationSuggestions = true,
              showExpandedAbbreviation = "always",
              showSuggestionsAsSnippets = false,
              syntaxProfiles = {},
              variables = {},
          },
      }) 
      
      -- slqs
      vim.lsp.config('sqls', {
        settings = {
          sqls = {},
        },
      })


      -- LSP Enable

      vim.lsp.enable("lua_ls")
      vim.lsp.enable("pyright")
      vim.lsp.enable("emmet_language_server")
      vim.lsp.enable("sqls")

    end, },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true,
    opts = {
      disable_in_macro = true, -- disable when recording or executing a macro
      disable_in_visualblock = false, -- disable when insert after visual block mode
      disable_in_replace_mode = true,
      ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=],
      enable_moveright = true,
      enable_afterquote = true, -- add bracket pairs after quote
      enable_check_bracket_line = true, --- check bracket in same line
      enable_bracket_in_quote = true, --
      enable_abbr = false, -- trigger abbreviation
      break_undo = true, -- switch for basic rule break undo sequence
      check_ts = false,
      map_cr = true,
      map_bs = true, -- map the <BS> key
      map_c_h = false, -- Map the <C-h> key to delete a pair
      map_c_w = false, -- map <c-w> to delete a pair if possible
    },
  },
}

