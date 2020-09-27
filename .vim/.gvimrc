
" enable : 現在の色設定を元にハイライト
" on	 : デフォルトの色でハイライト
syntax enable
" 背景色のテーマ設定 (.vimrcでの設定が優先される)
set background=dark
colorscheme solarized
" guifont=[FontName]:h[FontSize]
" set guifont=Ricty\ Diminished:h12
" set linespace=2.5

" MacVim起動時のウィンドウサイズ
set lines=40
set columns=100

command! Small :set guifont=Osaka-Mono:h8 guifontwide=Osaka-Mono:h8
command! Medium :set guifont=Osaka-Mono:h14 guifontwide=Osaka-Mono:h14
command! Large :set guifont=Osaka-Mono:h20 guifontwide=Osaka-Mono:h20
command! Huge :set guifont=Osaka-Mono:h28 guifontwide=Osaka-Mono:h28

command! Presen :set background=light guifont=Osaka-Mono:h28 guifontwide=Osaka-Mono:h28

