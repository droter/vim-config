" vam-install.sh
"
" Function to check that VAM is installed, and install it if needed. Requires
" git.

fun InstallVAM()
    let c = get(g:, 'vim_addon_manager', {})
    let g:vim_addon_manager = c
    let c.plugin_root_dir = expand('$HOME') . '/.vim/addons'
    let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
    if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
    execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '
    \       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
    endif
endfun

