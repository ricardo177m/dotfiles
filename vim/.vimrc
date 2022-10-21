syntax on
set number
set autoindent
set smartindent
set bg=dark
set nowrap           " do not automatically wrap on load
set formatoptions-=t " do not automatically wrap text when typing

" Use CTRL+W+W to jump between vim windows
nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window
" autocmd VimEnter * NERDTree | wincmd p

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-flagship'
" Language Server Protocol
Plug 'prabirshrestha/vim-lsp'
" C highlighting
Plug 'jackguo380/vim-lsp-cxx-highlight'
" ccls to vim
Plug 'm-pilia/vim-ccls'
" linting
Plug 'dense-analysis/ale'
call plug#end()

color gruvbox

