local lsp = require("lspconfig")

require("rzksobhy.langs.handlers")
require("rzksobhy.langs.null-ls")

-- adapters
require("rzksobhy.langs.lldb")
require("rzksobhy.langs.delve")

-- languages
require("rzksobhy.langs.c")
require("rzksobhy.langs.go")
require("rzksobhy.langs.rust")
require("rzksobhy.langs.lua")
require("rzksobhy.langs.python")
require("rzksobhy.langs.flutter")
require("rzksobhy.langs.node")

lsp["bashls"].setup({})
lsp["docker_compose_language_service"].setup({})
lsp["dockerls"].setup({})
