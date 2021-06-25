set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" plugin directory -- avoid standard names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" original ones previously in .vim/pack/bundle/start
Plug 'w0rp/ale'
Plug 'junegunn/fzf'
Plug 'roman/golden-ratio'
Plug 'fatih/vim-go'
Plug 'ervandew/supertab'
Plug 'ap/vim-buftabline'
Plug 'tpope/vim-fugitive'
" Plug 'mhinz/vim-grepper'

Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

Plug 'jsfaint/gen_tags.vim'

" Use ripgrep, command:
" :Rg some string
" :Rg <enter> -- uses word under cursor
Plug 'jremmen/vim-ripgrep'

" Generate an image of a visual selection/buffer
" :Silicon /path/to/output.png               - generate an image of the current buffer
" :'<,'>Silicon /path/to/output.png          - generate an image of the current visual line selection
" :'<,'>SiliconHighlight /path/to/output.png - generate an image of the current buffer with highlights
" Plug 'segeljakt/vim-silicon'

" Both required for markdown (with folding!)
"   - ugh - there are aspects of this I don't like (too aggressive putting
"   bullets on next line even with a ,q, seems to slow things down)
" Plug 'godlygeek/tabular'
" Plug 'plasticboy/vim-markdown'

" Deoplete plugins/syntax
"
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'davidhalter/jedi'
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-go', { 'do': 'make'}

" " NCM2 plugins/syntax etc -- see https://github.com/ncm2/ncm2/wiki
" "
" Plug 'prabirshrestha/vim-lsp'
" Plug 'ncm2/ncm2-vim-lsp'
" Plug 'ncm2/ncm2-gtags'
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-path'
" Plug 'ncm2/ncm2-tagprefix'
" 
" Plug 'ncm2/ncm2-syntax'
" Plug 'Shougo/neco-syntax'
" 
" Plug 'ncm2/ncm2-neoinclude'
" Plug 'Shougo/neoinclude.vim'
" 
" Plug 'fgrsnau/ncm-otherbuf', {'branch': 'ncm2'}
" Plug 'roxma/nvim-completion-manager'
" 
" " CSS
" Plug 'ncm2/ncm2-cssomni'
" 
" " JS
" " Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
" 
" " Python
" Plug 'ncm2/ncm2-jedi'
" 
" " Go
" Plug 'ncm2/ncm2-go'

" " Java
" " Plug 'ObserverOfTime/ncm2-jc2', {'for': ['java', 'jsp']}
" " Plug 'artur-shaik/vim-javacomplete2', {'for': ['java', 'jsp']}

" optional, disabled for now

" Plug 'ncm2/ncm2-github'

" " Typescript things (probably never need, but...)
"   Plug 'HerringtonDarkholme/yats.vim'
"   Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" " TS: For async completion
"   Plug 'Shougo/deoplete.nvim'
" " TS: For Denite features
"   Plug 'Shougo/denite.nvim'

" initialize plugin system
call plug#end()

let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
 
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1

source ~/.vim/vimrc
