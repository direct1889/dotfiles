if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/Users/kazuaki/.vim,/Applications/MacVim.app/Contents/Resources/vim/vimfiles,/Applications/MacVim.app/Contents/Resources/vim/runtime,/Applications/MacVim.app/Contents/Resources/vim/vimfiles/after,/Users/kazuaki/.vim/after,/Applications/MacVim.app/Contents/Resources/vim/plugins/autofmt,/Applications/MacVim.app/Contents/Resources/vim/plugins/golang,/Applications/MacVim.app/Contents/Resources/vim/plugins/kaoriya,/Applications/MacVim.app/Contents/Resources/vim/plugins/vimdoc-ja,/Users/kazuaki/.vim/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/kazuaki/.vimrc', '/Users/kazuaki/.vim/dein/dein.toml', '/Users/kazuaki/.vim/dein/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/kazuaki/.vim/dein'
let g:dein#_runtime_path = '/Users/kazuaki/.vim/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/kazuaki/.vim/dein/.cache/.vimrc'
let &runtimepath = '/Users/kazuaki/.vim,/Applications/MacVim.app/Contents/Resources/vim/vimfiles,/Users/kazuaki/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/kazuaki/.vim/dein/.cache/.vimrc/.dein,/Applications/MacVim.app/Contents/Resources/vim/runtime,/Users/kazuaki/.vim/dein/.cache/.vimrc/.dein/after,/Applications/MacVim.app/Contents/Resources/vim/vimfiles/after,/Users/kazuaki/.vim/after,/Applications/MacVim.app/Contents/Resources/vim/plugins/autofmt,/Applications/MacVim.app/Contents/Resources/vim/plugins/golang,/Applications/MacVim.app/Contents/Resources/vim/plugins/kaoriya,/Applications/MacVim.app/Contents/Resources/vim/plugins/vimdoc-ja'
filetype off
autocmd dein-events InsertCharPre * call dein#autoload#_on_event("InsertCharPre", ['neosnippet.vim'])
