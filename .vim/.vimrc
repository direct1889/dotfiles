
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state($HOME . '/.vim/dein')

  call dein#begin('/Users/kazuaki/.vim/dein')

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイル（後述）を用意しておく
  let g:toml_dir  = expand('~/.vim/dein')
  let s:toml      = g:toml_dir . '/dein.toml'
  let s:lazy_toml = g:toml_dir . '/dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Let dein manage dein
  " Required:
  " call dein#add('/Users/kazuaki/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  " call dein#add('Shougo/neosnippet.vim')
  " call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  " call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " NERDTree
  " call dein#add('scrooloose/nerdtree')

  " deoplete
  " call dein#add('Shougo/deoplete.nvim')
  " if !has('nvim')
    " call dein#add('roxma/nvim-yarp')
    " call dein#add('roxma/vim-hug-neovim-rpc')
  " endif
  " let g:deoplete#enable_at_startup = 1

  " Required:
  call dein#end()
  call dein#save_state()
endif

" call dein#begin('/Users/kazuaki/.vim/dein')
" 
" " Let dein manage dein
" " Required:
" call dein#add('/Users/kazuaki/.vim/dein/repos/github.com/Shougo/dein.vim')
" 
" " Add or remove your plugins here:
" call dein#add('Shougo/neosnippet.vim')
" call dein#add('Shougo/neosnippet-snippets')
" 
" " You can specify revision/branch/tag.
" call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })


" " Required:
" call dein#end()
" call dein#save_state()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------



" Encoding
set encoding=UTF-8
set fileencoding=UTF-8
set termencoding=UTF-8

" File
" ファイル変更中でも他のファイルを開けるようにする
set hidden
" ファイルの内容が外部で変更されると自動で再読込する
set autoread

" Backup
" undo/swap/backupファイルを作成しない
set noundofile
set noswapfile
set nobackup


" NeoVim
"set runtimepath^=~/dotfiles/.vim runtimepath+=~/dotfiles/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc


" Search
" インクリメンタルサーチを行う
set incsearch
" 検索結果をハイライト
set hlsearch
" Esc*2でハイライト表示を終了
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" 検索時に文字の大小を区別しない
set ignorecase
" 検索時に大文字を含んでいたら大小を区別
set smartcase
" 検索をファイルの先頭へループ
set wrapscan


" Color
" シンタックスカラーリングを有効化
syntax enable
" デフォルトの配色を設定
set background=dark
" カラースキーマを設定
colorscheme solarized


" Display
" 編集中のファイル名を表示
set title
" 行番号を表示
set number
" カーソルがある行/列を表示
set ruler
" 入力中のコマンドを表示
set showcmd
" 閉じ括弧の入力時に対応する括弧を表示
set showmatch
" showmatchの表示時間
set matchtime=3
" ステータスラインを常に表示
set laststatus=2
" 不可視文字を表示
set list
" 不可視文字の可視化に使う文字の指定
" tab:タブ、trail:行末のスペース
set listchars=tab:>\ ,trail:_


" Input
" ヤンク/ペーストをOSクリップボードと共有
" Mac標準インストールのvimでは共有不可能
" https://qiita.com/takuyao/items/6aadb4ce147d7052b7f4
set clipboard+=unnamed
" 改行時、前行のインデントを新行に維持
set autoindent
" 改行時、幾つかのC構文を認識しインデントを増減
set smartindent
" shiftwidthによるタブ幅の指定を有効化
set smarttab
" <TAB>によるインデントの幅
set shiftwidth=4
" <TAB>を何文字分の長さにするか
set tabstop=4
" <TAB>をキーボードから入力したとき、<TAB>をn文字の" "を入力
set softtabstop=4
" 指定したコマンドでの移動時、行頭/行末を超えて移動可能に
set whichwrap=b,s,h,l,<,>,[,]

" 行を右端で折り返して表示
set wrap

" コマンドモードでTab補完
set wildmenu
" コマンドモードでTabを押したときの挙動の詳細
set wildmenu wildmode=list:full

" <TAB>をキーボードから入力したとき、<TAB>の代わりにn文字の" "を入力
" set expandtab
" <TAB>をキーボードから入力したとき、そのまま<TAB>を入力
" set noet

" Ctrl-j を Escape 代わりに
" inoremap <C-j> <Esc>:call system(g:imeoff)<CR>
" vnoremap <C-j> <Esc>
" cnoremap <C-j> <Esc>:call system(g:imeoff)<CR>
" Ctrl-j を Escape 代わりに
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>
cnoremap <C-j> <Esc>

" 括弧入力時に中に入る
inoremap [] []<left>
inoremap () ()<left>
inoremap {} {}<left>
inoremap "" ""<left>
inoremap '' ''<left>


" カーソル行をハイライト
set cursorline
highlight CursorLine term=none cterm=none ctermfg=gray ctermbg=none


set backspace=eol


" .vimrc を新規タブで開く
nnoremap <F6> :<C-u>tabe $MYVIMRC<CR>
" .vimrc をリロード
nnoremap <F5> :<C-u>source $MYVIMRC<CR>
" .gvimrc を新規タブで開く
nnoremap <F8> :<C-u>tabe $MYGVIMRC<CR>
" .gvimrc をリロード
nnoremap <F7> :<C-u>source $MYGVIMRC<CR>


nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

nnoremap $ g$
nnoremap g$ $


" 空行へジャンプ
nnoremap <C-j> }
nnoremap <C-k> {


" 消去時にクリップボードを更新しない
nnoremap x "_x
nnoremap d "_d
nnoremap D "_D
nnoremap c "_c
nnoremap C "_C

" Y を D/C と同様の振る舞いに
nnoremap Y y$


" visual-mode
" Shift-I/A in visual-line move like in visual-block
vnoremap <expr> I <SID>force_blockwise_visual('I')
vnoremap <expr> A <SID>force_blockwise_visual('A')

function! s:force_blockwise_visual(next_key)
	if mode() ==# 'v'
		return "\<C-v>" . a:next_key
	elseif mode() ==# 'V'
		return "\<C-v>0o" . a:next_key
	else " mode() ==# "\<C-v>"
		return a:next_key
	endif
endfunction


"Command-mode
" カレントディレクトリパスを取得
cnoremap %% <C-R>=expand('%:p:h').'/'<cr>

" 検索文字列指定時、特殊文字をデフォルトでエスケープ
" cnoremap <expr> / <SID>default_escape('/')
cnoremap <expr> ( <SID>default_escape('(')
cnoremap <expr> ) <SID>default_escape(')')

function! s:default_escape(escapedcmd)
	if getcmdtype() == '/'
		return '\' . a:escapedcmd
"	elseif getcmdtype() == ':'
"		return '\' . a:escapedcmd
	else
		return a:escapedcmd
	endif
endfunction


" <Space>
" めっちゃ押しやすい位置にいるのに l と動作一緒ってどういうことやねん
nnoremap [pre]      <Nop>
nmap     <Space>    [pre]

nnoremap [pre]o o<Esc>
nnoremap [pre]O O<Esc>
nnoremap [pre]h ^
nnoremap [pre]l $
nnoremap [pre]m %


" Cut
nnoremap [pre]x x
nnoremap [pre]d d
nnoremap [pre]<S-d> D
nnoremap [pre]c c
nnoremap [pre]C C

" Paste
nnoremap [pre]p $p


" Unuseful
" 事故りそうだしわざわざ使う必要もないので
nnoremap ZQ :q
nnoremap ZZ :q


" Macにて、ノーマルモードに戻るときにIMEをオフ
" if has('mac')
"   let g:imeoff = 'osascript -e "tell application \"System Events\" to key code 102"'
"   augroup MyIMEGroup
"     autocmd!
"     autocmd InsertLeave * :call system(g:imeoff)
"   augroup END
" endif


command! Dark :set background=dark
command! Light :set background=light


" :au[tocmd] [group] {event} {pat} [++once] [++nested] {cmd}


