" Gruvbox - https://github.com/morhetz/gruvbox/wiki/Installation
" git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

imap jj <Esc>

" it saves file with cmd-s because cmd-s is mapped to F5 in Blink
command -nargs=0 -bar Update if &modified
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
inoremap <F5> <c-o>:Update<CR>
noremap <F5> :update<CR>
vnoremap <F5> <C-C>:update<CR>

" NERDTree
" git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
" vim -u NONE -c \"helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
nnoremap <C-b> :NERDTreeToggle<CR>

" rust.vim https://github.com/rust-lang/rust.vim
" git clone https://github.com/rust-lang/rust.vim ~/.vim/pack/plugins/start/rust.vim
syntax enable
filetype plugin indent on

" ALE
"mkdir -p ~/.vim/pack/git-plugins/start
"git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale
let g:rustfmt_autosave = 1
let g:ale_linters = {'rust': ['analyzer']}

set backspace=indent,eol,start
