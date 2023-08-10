local Path = require("plenary.path")
local session_manager = require("session_manager")
local config = require("session_manager.config")

session_manager.setup({
    sessions_dir = Path:new(vim.fn.stdpath("data"), "sessions"),
    autoload_mode = config.AutoloadMode.Disabled,
})

local group = vim.api.nvim_create_augroup("SessionManager", { clear = true })

local function init()
    session_manager.load_current_dir_session(true)
end

-- autoload session on startup
if vim.v.vim_did_enter then
    init()
else
    vim.api.nvim_create_autocmd({ "VimEnter" }, {
        group = group,
        callback = init,
    })
end

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    group = group,
    callback = function()
        if
            vim.bo.filetype ~= "git"
            and not vim.bo.filetype ~= "gitcommit"
            and not vim.bo.filetype ~= "gitrebase"
        then
            session_manager.autosave_session()
        end
    end,
})
