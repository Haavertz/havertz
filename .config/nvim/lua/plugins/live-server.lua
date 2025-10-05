return {
    'wolandark/vim-live-server',
    config = function()
        vim.g.live_server_port = 8080
        vim.g.live_server_backend = 'live-server' 
    end,
}
