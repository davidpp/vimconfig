VVim Config with Git
======================================================================

## Submodule
With pathogen installed, it’s now possible to keep the files for each plugin together, which means that every plugin can be kept in its own git repository. The best way to do this is to use git submodules, which are designed especially for the purpose of keeping git repositories within a git repository.
To install the fugitiveplugin as a git submodule, take the following steps :

<pre>
cd ~/.vim
mkdir ~/.vim/bundle
git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
git add .
git commit -m "Install Fugitive.vim bundle as a submodule."
</pre>

## New Machine
Installing your Vim environment on another machineOnce your vim configuration is under version control, it’s quite straightforward to import your settings to any machine that has git installed. If you followed the instructions above to put your vimrc and plugins in a dotvimdirectory, then you can follow these steps to synchronise them to another machine:

<pre>
cd ~
git clone git@github.com:davidpaquet/vimconfig.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
cd ~/.vim
git submodule init
git submodule update
</pre>

## Upgrading a plugin
Upgrading a plugin bundle at some point in the future, the fugitive plugin might be updated. To fetch the latest changes, go into the fugitive repository, and pull the latest version:
cd ~/.vim/bundle/fugitive
git pull

