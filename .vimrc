set t_Co=256                    "acknowledge 256 color support
colorscheme desert
set nu                          "line numbers
set cursorline                  
set nohlsearch                  "reset highlighted searches

"set lines=40 columns=84
match ErrorMsg '\%>80v.\+'      "highlight cols past 80

execute pathogen#infect()

set tabstop=8
set expandtab
set smarttab
set shiftwidth=8

set autoindent
imap jj <Esc>
imap jk <Esc>
imap jJ <Esc>
set backspace=indent,eol,start
set noruler                     "disable ruler in place of
set laststatus=2                "a status line
set mouse=a


"maps ',k' to comment out a block of text in /* */ style
let mapleader=","
function! Komment()
  if getline(".") =~ '\/\*'
    let hls=@/
    s/^\/\*//
    s/*\/$//
    let @/=hls
  else
    let hls=@/
    s/^/\/*/
    s/$/*\//
    let @/=hls
  endif
endfunction
map <leader>k :call Komment()<CR>

set makeprg=./compile


"status line stuff formatting
set statusline=
set statusline+=%1*\ %n\ %*    "buffer number
set statusline+=%5*%{&ff}%*    "file format
set statusline+=%3*%y%*        "file format
set statusline+=%4*\ %<%F%*    "full path
set statusline+=%2*%m%*        "modified flag
set statusline+=%1*%=%5l%*     "current line
set statusline+=%2*/%L%*       "total lines
set statusline+=%1*%4v\ %*     "virtual column number
set statusline+=%2*0x%04B\ %*  "character under the cursor in hex

hi User1 ctermfg=1 ctermbg=8
hi User2 ctermfg=3 ctermbg=8
hi User3 ctermfg=15 ctermbg=8
hi User4 ctermfg=6 ctermbg=8
hi User5 ctermfg=15 ctermbg=8

hi User1 guifg=#eea040 guibg=#222222
hi User2 guifg=#dd3333 guibg=#222222
hi User3 guifg=#ff66ff guibg=#222222
hi User4 guifg=#a0ee40 guibg=#222222
hi User5 guifg=#eeee40 guibg=#222222


