" General Settings
set backspace=2         " Allow backspace in insert mode to behave like a normal editor
syntax on               " Enable syntax highlighting
filetype indent on      " Activate file-specific indenting
set autoindent          " Enable automatic indentation
set number              " Show line numbers
colorscheme habamax     " Set the colorscheme to 'habamax'
set background=dark     " Use a dark background for the editor
set nobackup            " Disable backup files (~file)
set hidden              " Allow switching buffers without saving changes
set belloff=all         " Turns off all types of bells

" Auto-complete Brackets
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

" Disabling Arrow Keys
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>
nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Right> <C-o>:echo "No right for you!"<CR>
nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> <C-o>:echo "No up for you!"<CR>
nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
inoremap <Down> <C-o>:echo "No down for you!"<CR>

" Buffer Navigation
nnoremap <Leader>b :buffers<CR>:buffer<Space>
nnoremap <Space> <Nop>
map <Space> <Leader>

" Delete without overwriting the register (blackhole register)
nnoremap d "_d

" Mouse and Clipboard Settings
set mouse=nicr          " Enable mouse scrolling and interaction in normal, insert, and command-line modes
set clipboard=unnamedplus,unnamed,autoselect  " Share clipboard with the system

" Text, Tabs, and Indentation
set expandtab           " Use spaces instead of tabs
set smarttab            " Smart tab behavior based on context
set shiftwidth=4        " Set tab width to 4 spaces
set tabstop=4           " Set tab width to 4 spaces
set lbr                 " Line break after 500 characters (useful for long lines)
set tw=500              " Line break at 500 characters

" Enable auto-indent and smart indenting features
set ai                  " Auto indenting
set si                  " Smart indenting

" Wrap lines that exceed window width
set wrap

" Navigation Enhancements
map j gj                " Move down by visual line instead of actual line
map k gk                " Move up by visual line instead of actual line

" Keep the cursor centered while scrolling vertically
set scrolloff=999

" Highlight the current line where the cursor is located
set cursorline

" Customize cursor line appearance (bold text with grey background)
hi CursorLine term=bold cterm=bold guibg=Grey40

" Status Line Configuration
set laststatus=2        " Always display the status line at the bottom of the window

" Format the status line with useful information:
set statusline=
set statusline+=%7*\[%n]                                  " Buffer number in brackets []
set statusline+=%1*\ %<%F\ %m\                            " File name and path + modified flag (%m)
set statusline+=%2*\ %y\                                  " File type (e.g., python, txt)
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      " File encoding (e.g., utf-8)
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            " BOM indicator (Byte Order Mark)
set statusline+=%4*\ %{&ff}\                              " File format (unix/dos/mac)
set statusline+=%8*\ %=\ line:\ %l/%L\ (%p%%)\            " Line number / Total lines (% progress)
set statusline +=%1*\col:\ %v\ %*                         " Column number in the current line

