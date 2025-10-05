return {
    {
        "mfussenegger/nvim-jdtls",
        ft = { "java" }, 
    },
    { 
        "mfussenegger/nvim-dap",
        config = function()
            vim.api.nvim_set_keymap('n', '<F5>', ":lua require'jdtls'.debug_test()<CR>", { noremap=true, silent=true })
        end
    }
}

