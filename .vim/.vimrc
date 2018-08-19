
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
set clipboard=unnamed
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

" 行を右端で折り返さない
set nowrap

" ワイルドだなぁ
set wildmenu
set wildmenu wildmode=list:full

" <TAB>をキーボードから入力したとき、<TAB>の代わりにn文字の" "を入力
" set expandtab
" <TAB>をキーボードから入力したとき、そのまま<TAB>を入力
" set noet

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

"set runtimepath& runtimepath+=~/vimfiles/


set backspace=eol


" .vimrc を新規タブで開く
nnoremap <F6> :<C-u>tabe $MYVIMRC<CR>
" .vimrc をリロード
nnoremap <F5> :<C-u>source $MYVIMRC<CR>


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
cnoremap <expr> / <SID>default_escape('/')
cnoremap <expr> ( <SID>default_escape('(')
cnoremap <expr> ) <SID>default_escape(')')

function! s:default_escape(escapedcmd)
	if getcmdtype() == '/'
		return '\' . a:escapedcmd
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


