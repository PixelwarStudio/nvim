return {
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        priority = 1000,
        config = function(spec, opts)
            local lsp_zero = require("lsp-zero")
            lsp_zero.extend_lspconfig()
            lsp_zero.on_attach(function(client, bufnr)
                lsp_zero.default_keymaps({buffer = bufnr})
            end)
        end
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {"hrsh7th/cmp-nvim-lsp"},
        }
    },
    {
        "williamboman/mason.nvim",
        opts = {}
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "pyright", "html" },
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({})
                end,
                ltex = function ()
                    require("lspconfig").ltex.setup({
                        settings = {
                            ltex = {
                                additionalRules = {
                                    languageModel = "~/ngrams"
                                }
                            }
                        }
                    })
                end
            }
        }
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            {
                "L3MON4D3/LuaSnip",
                "hrsh7th/cmp-nvim-lua",
                "hrsh7th/cmp-path"
            }
        },
        config = function ()
            local cmp = require("cmp")
            local cmp_action = require("lsp-zero").cmp_action()
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                sources = {
                    {name = "copilot"},
                    {name = "nvim_lsp"},
                    {name = "luasnip"},
                    {name = "nvim_lua"},
                    {name = "buffer"},
                    {name = "path"},
                },
                mapping = cmp.mapping.preset.insert({
                    ["<CR>"] = cmp.mapping.confirm({select = false}),
                    ["<Tab>"] = cmp_action.tab_complete(),
                    ["<S-Tab>"] = cmp_action.select_prev_or_fallback(),
                }),
                preselect = "item",
                completion = {
                    completeopt = "menu,menuone,noinsert"
                }
            })
        end
    }
}
