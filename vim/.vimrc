syntax on
set number
set autoindent
set smartindent
set bg=dark
set nowrap           " do not automatically wrap on load
set formatoptions-=t " do not automatically wrap text when typing

" 4-space tab in all files, real 8-wide tab char in Makefiles
" Only do this part when compiled with support for autocommands
if has("autocmd")
    " Use filetype detection and file-based automatic indenting
    filetype plugin indent on

    " Use actual tab chars in Makefiles
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif
set tabstop=4       " The width of a TAB is set to 4
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " spaces

" Use CTRL+W+W to jump between vim windows
nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window
" autocmd VimEnter * NERDTree | wincmd p

let g:airline_powerline_fonts=1

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

Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf.vim'
Plug 'github/copilot.vim'
Plug 'vim-airline/vim-airline'

call plug#end()

color gruvbox

