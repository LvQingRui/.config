return {
  "mg979/vim-visual-multi",
  init = function()
    vim.cmd([[
  let g:VM_leader                     = {'default': ',', 'visual': ',', 'buffer': ','}
  let g:VM_maps                       = {}
  let g:VM_custom_motions             = {'j': 'h', 'l': 'l', 'i': 'k', 'k': 'j', 'J': '0', 'L': '$'}
  let g:VM_maps['i']                  = 'h'
  let g:VM_maps['I']                  = 'H'
  let g:VM_maps['Find Under']         = '<C-n>'
  let g:VM_maps['Find Subword Under'] = '<C-n>'
  let g:VM_maps['Find Next']          = ''
  let g:VM_maps['Find Prev']          = ''
  let g:VM_maps['Remove Region']      = 'q'
  noremap <leader>sa <Plug>(VM-Select-All)
]])
  end,
}
