set backspace=2         " backspace in insert mode works like normal editor
syntax on               " syntax highlighting
filetype indent on      " activates indenting for files
set autoindent          " auto indenting
set number relativenumber              " line numbers
colorscheme habamax     " colorscheme desert
set background=dark
set nobackup            " get rid of anoying ~file
set hidden		" disable save warning while switching buffers

" Vim displays all buffer information (including their buffer numbers and filenames) and you can select which buffer to jump into.
nnoremap <Leader>b :buffers<CR>:buffer<Space>
" Setze den Leader-Key auf die Leertaste
nnoremap <Space> <Nop>
map <Space> <Leader>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

"Curser alwys in the middle
set scrolloff=999

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\ %m\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..)
set statusline+=%8*\ %=\ line:\ %l/%L\ (%p%%)\             "Rownumber/total (%)
set statusline +=%1*\col:\ %v\ %*
