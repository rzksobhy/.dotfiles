require("rzksobhy.langs.handlers")
require("rzksobhy.langs.null-ls")

-- adapters
require("rzksobhy.langs.lldb")
require("rzksobhy.langs.delve")

-- languages
require("rzksobhy.langs.c")
require("rzksobhy.langs.go")
require("rzksobhy.langs.rust")
require("rzksobhy.langs.flutter")
require("rzksobhy.langs.lua")
require("rzksobhy.langs.typescript")
require("rzksobhy.langs.python")

require("lspconfig").bashls.setup({})
require("lspconfig").docker_compose_language_service.setup({})
require("lspconfig").dockerls.setup({})
