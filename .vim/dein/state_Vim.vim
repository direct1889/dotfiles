if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/Users/kazuaki/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vimfiles/after,/Users/kazuaki/.vim/after,/Users/kazuaki/.vim/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/kazuaki/.vimrc', '/Users/kazuaki/.vim/dein/dein.toml', '/Users/kazuaki/.vim/dein/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/kazuaki/.vim/dein'
let g:dein#_runtime_path = '/Users/kazuaki/.vim/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/kazuaki/.vim/dein/.cache/.vimrc'
let &runtimepath = '/Users/kazuaki/.vim,/usr/share/vim/vimfiles,/Users/kazuaki/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/kazuaki/.vim/dein/.cache/.vimrc/.dein,/usr/share/vim/vim81,/Users/kazuaki/.vim/dein/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/Users/kazuaki/.vim/after'
autocmd dein-events InsertCharPre * call dein#autoload#_on_event("InsertCharPre", ['neosnippet.vim'])
