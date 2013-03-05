# setup.sh
#
# creates symlinks to home directory for vim configuration
#
# https://github.com/ericevenchick/vim-config
#

# pushd and popd are needed to ensure pwd gets path of this file
pushd `dirname $0` > /dev/null
VIMCONFIG_PATH=`pwd -P`
popd > /dev/null

# check that ~/.vimrc does not already exist
if [ -a ~/.vimrc ];
then
    echo '~/.vimrc already exists. aborting!'
    exit
fi
# check that ~/.vim does not already exist
if [ -a ~/.vim ];
then
    echo '~/.vim already exists. aborting!'
    exit
fi

# create symlinks
echo 'creating links...'

echo $VIMCONFIG_PATH'/vimrc -> ~/.vimrc'
ln -s $VIMCONFIG_PATH/vimrc ~/.vimrc

echo $VIMCONFIG_PATH'/vim/ -> ~/.vim/'
ln -s $VIMCONFIG_PATH/vim ~/.vim

echo 'done.'
