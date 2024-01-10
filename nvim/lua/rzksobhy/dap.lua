local dap = require("dap")
local dapui = require("dapui")
local dap_vtext = require("nvim-dap-virtual-text")

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<F5>", dap.continue, opts)
vim.keymap.set("n", "<F9>", dap.toggle_breakpoint, opts)

vim.keymap.set("n", "<leader><F9>", function ()
    dap.set_breakpoint(vim.fn.input("condition > "))
end, opts)

dap.listeners.after.event_initialized["rzksobhy"] = function()
    vim.keymap.set("n", "<F1>", dap.terminate, opts)
    vim.keymap.set("n", "<F4>", dapui.toggle, opts)
    vim.keymap.set("n", "<F10>", dap.step_over, opts)
    vim.keymap.set("n", "<F11>", dap.step_into, opts)
    vim.keymap.set("n", "<F12>", dap.step_out, opts)

    dap_vtext.disable()
end

local function exit_callback()
    pcall(vim.keymap.del, "n", "<F1>")
    pcall(vim.keymap.del, "n", "<F4>")
    pcall(vim.keymap.del, "n", "<F10>")
    pcall(vim.keymap.del, "n", "<F11>")
    pcall(vim.keymap.del, "n", "<F12>")

    dapui.close()
    dap_vtext.enable()
end

dap.listeners.after.event_exited["rzksobhy"] = exit_callback
dap.listeners.after.event_terminated["rzksobhy"] = exit_callback

dapui.setup()
dap_vtext.setup({})
