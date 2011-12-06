## About 

I put all my vim config files at [Dot Vim], it includes many kinds of plugins, colorschemes and templates(via powerful [xptemplate]). These vim extensions make vim a very powerful enviroment for coding, editing, file management and many more. 

## Quick Start

1. Clone it 

     ```
     $ git clone http://github.com/linsong/dot_vim.git ~/.vim
     ```
     NOTE: you'd better backup your local .vim folder first. 

2. Install and Configure [Vundle]

     Please refers to [Vundle] page for details, that's pretty simple.

3. Link vimrc files to your home

     ```
     $ cd ~
     $ ln -s ~/.vim/_vimrc .vimrc 
     $ ln -s ~/.vim/_gvimrc .gvimrc
     ```

     NOTE: you'd better backup your local .vimrc and .gvimrc files first. 
     For Windows user, .vimrc should be _vimrc, .gvimrc should be _gvimrc

4. Install vim plugins 

     There is a file named VundleFile under .vim folder, it already includes many powerful plugins. You can add more or disable some. After you feel comfortable with it, save it, relaunch vim and run vim command ':BundleInstall'. Now you can have a break and later you will a powerful enviroment for hacking! 

Happy Vimming!

## Recommandation 
If you are a big fan of vim and want the same power when you operate your browser, just like me ;) , you should try [Pentadactyl]. 

To let you start easily, I have put my [Pentadactyl] config files at [dot_pentadactyl], enjoy!

## A bit History 
I used to add all my vim configs and plugins into one git repo at [vim_config], it works well but it have several disadvantages:

* it is very big(~20M)
* it is very easy to be out of date since I need to update all these plugins manually 
* it is not modular designed, so difficult to remove a plugin or temporary disable some plugins to speed up vim startup time. this is the most frustrating drawback, even later I started to use [Pathogen], it is still not perfect.

These problems are all solved by [Vundle] in a nice way. Now to keep all plugins up to date just need running one vim command. And you can even disable some plugins in VundleFile by commentting them out to get vim start faster, and then later when you really need a disabled plugin, just run :BundleInstall PLUGIN_NAME, then it will ready, no need to restart vim. And trying some new vim plugin is super easy, just BundleInstall it. 

For more details, suggest you have a look on [Vundle]. 

Thanks [Vundle]!

[Dot Vim]:https://github.com/linsong/dot_vim
[Vundle]:http://github.com/gmarik/vundle
[xptemplate]:https://github.com/drmingdrmer/xptemplate
[vim_config]:https://github.com/linsong/vim-config
[Pathogen]:http://github.com/tpope/vim-pathogen/
[Pentadactyl]:http://dactyl.sourceforge.net/pentadactyl/index
[dot_pentadactyl]:https://github.com/linsong/dot_pentadactyl
