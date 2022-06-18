runtime! base.vim
runtime! plug.vim
runtime! statusline.vim

nnoremap <silent> <C-S> :NERDTreeToggle<CR>
nnoremap <silent> <C-D> :TagbarToggle<CR>

let NERDTreeShowHidden=1

augroup init
  autocmd!
augroup END

set termguicolors
set background=dark
colorscheme iceberg
