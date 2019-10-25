" Configurações do nvim - vim

" Permite carregar no cache do vim outros arquivos
set hidden

"Mostra numero de linhas
set number
set relativenumber
set mouse=a

"Mostra em tempo real mudanças de substituição
set inccommand=split

"Mapa de atalhos
let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
