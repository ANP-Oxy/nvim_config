return {
  'klafyvel/vim-slime-cells',
  dependencies = {'jpalardy/vim-slime'},
  ft = {'python'},
  config=function ()
    vim.g.slime_target = "tmux"
    vim.g.slime_cell_delimiter = "^\\s*##"
    vim.g.slime_default_config = {socket_name="default", target_pane="0"}
    vim.g.slime_dont_ask_default = 1
    vim.g.slime_bracketed_paste = 1
    vim.g.slime_no_mappings = 1
    vim.cmd([[
    nmap <leader>cv <Plug>SlimeConfig
    nmap <leader>cc <Plug>SlimeCellsSendAndGoToNext
    nmap <leader>cj <Plug>SlimeCellsNext
    nmap <leader>ck <Plug>SlimeCellsPrev
    ]])
  end
}