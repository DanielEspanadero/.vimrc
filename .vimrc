" Configuración básica
set nocompatible           " Desactiva el modo compatible con vi
syntax on                  " Habilita la sintaxis
filetype plugin indent on   " Habilita la detección de tipo de archivo, plugins y sangrado automático

" Mejoras visuales
set number                 " Muestra números de línea
set relativenumber         " Muestra números relativos de línea
set cursorline             " Resalta la línea actual
set hlsearch               " Resalta las coincidencias de búsqueda
set incsearch              " Muestra resultados de búsqueda a medida que se escribe
set showmatch              " Resalta los pares de paréntesis
set nocursorline

" Configuración de la edición
set tabstop=4              " Establece la longitud de la tabulación a 4 espacios
set shiftwidth=4           " Controla la cantidad de espacios para la sangría
set noexpandtab            " Usa tabulaciones en lugar de espacios
set autoindent             " Mantiene la sangría de la línea anterior
set smartindent            " Aplica sangrado inteligente

" Configuración de desplazamiento
set scrolloff=5            " Mantiene un margen de 5 líneas al desplazarse verticalmente
set sidescrolloff=5        " Mantiene un margen de 5 columnas al desplazarse horizontalmente

" Atajos de teclado útiles
nmap <leader>w :w<CR>      " Guarda el archivo con <leader>w
nmap <leader>q :q<CR>      " Cierra la ventana con <leader>q
nmap <leader>x :x<CR>      " Guarda y cierra la ventana con <leader>x

" Administrador de complementos: Vim-Plug
" Carga Vim-Plug si está instalado
if filereadable(expand("~/.vim/autoload/plug.vim"))
    source ~/.vim/autoload/plug.vim
    call plug#begin('~/.vim/plugged')

    " Complementos
    Plug 'tpope/vim-fugitive'     " Git en Vim
    Plug 'sheerun/vim-polyglot'   " Soporte para varios lenguajes
    Plug 'preservim/nerdtree'     " Explorador de archivos
    Plug 'ycm-core/YouCompleteMe' " Autocompletado inteligente
    Plug 'morhetz/gruvbox'        " Tema Gruvbox
    
    set background=dark
    colorscheme gruvbox


    " Cierra el bloque de configuración de complementos
    call plug#end()
else
    echo "Vim-Plug no está instalado. Por favor, instálalo siguiendo las instrucciones en https://github.com/junegunn/vim-plug"
endif

