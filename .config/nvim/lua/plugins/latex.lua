return {
  {
    "lervag/vimtex",
    init = function()
      vim.cmd[[let g:vimtex_view_general_viewer = 'okular']] 
      vim.cmd[[let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex']]
      vim.cmd[[let g:vimtex_compiler_method = 'latexmk']]
    end
  }
}
