# Vim the better IDE

In this repo I want to share my neovim setup. Neovim is my main IDE, so I put some customization in this setup.
The keybindings and language support are based on my preferences and probably require some adjustments for your needs.
For now I just explain how to get everything running (mainly for myself, when I need to runf vim on another machine)
Maybe I'll provide extended information and usecases in the future.

## Requirements
`neovim >=0.5`
`node >= 10.19`


## Getting started
1. clone this repo
`git clone https://github.com/MaxJoas/vimconfig`
2. Get vim plugin manager. I use Vundle
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
3. Create correct directory structure
    - create (if not already there) a `~/.config/nvim` directory
    - copy all the contents of this very repo that you've cloned in step 1 into `~/.config/nvim` directory
    - copy the `Vundle.vim directory in ``~/.config/nvim directory/bundle` (create bundle dir first)
4. Install Plugins
    - open `~/.config/nvim/init.vim`
    - type `PluginInstall`
5. Done

## Update nvim without root access
- got to https://github.com/neovim/neovim/releases
- download the zipped version of vim and unzip
- set an alias in your bashrc to the executble of the nvim
