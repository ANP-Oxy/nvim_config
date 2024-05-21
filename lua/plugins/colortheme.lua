return {
    { "catppuccin/nvim",
    config = function()

    local catppuccin = require("catppuccin")
    catppuccin.setup({
            --transparent_background = true,
            show_end_of_buffer = true,
            dim_inactive = {
                    enabled = true,
                    percentage = 0.15,
                }
        })


        end},

      { "rose-pine/neovim", name = "rose-pine",
    config = function()

    local rose_pine = require("rose-pine")
    rose_pine.setup({
                dim_inactive_windows = true,
            })
        end},
}



