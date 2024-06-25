  require('neoscroll').setup({
    -- All these keys will be mapped to their corresponding default scrolling animation
    mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>', '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
    hide_cursor = true,         -- Hide cursor while scrolling
    stop_eof = true,            -- Stop at <EOF> when scrolling downwards
    use_local_scrolloff = false -- Use the local scope of scrolloff instead of the global scope
  })

  -- Custom mappings for smoother scroll
  local t = {}
  t['<C-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '250'}}
  t['<C-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '250'}}
  t['<C-b>'] = {'scroll', {'-vim.api.nvim_win_get_height(0)', 'true', '450'}}
  t['<C-f>'] = {'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '450'}}
  t['<C-y>'] = {'scroll', {'-0.10', 'false', '100'}}
  t['<C-e>'] = {'scroll', { '0.10', 'false', '100'}}
  t['zt']    = {'zt', {'300'}}
  t['zz']    = {'zz', {'300'}}
  t['zb']    = {'zb', {'300'}}

  require('neoscroll.config').set_mappings(t)
