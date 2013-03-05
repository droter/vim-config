" vundle-config.vim
"
" Installs vundle if not installed. Sets up Vundle and all bundles when vim
" runs. Edit the list of bundles to install here.
"
" Vundle autoinstall based on Erik Zaadi's article:
" http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/

let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

" Vundle setup
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" begin bundle list

" file managment tree
Bundle 'scrooloose/nerdtree'
" terminal color scheme
Bundle 'fisadev/fisa-vim-colorscheme'
" powerline status bar
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" end of bundle list

if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif


