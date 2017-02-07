# Cristian's dotfiles

This is not more than my dotfiles configurations for things like Fish and Vim.

## In Windows

Well, I assume you use Vim in Windows and just in any case, you are using things like ConEmu, this 'works' with Windows console, to install your Windows configuration and plugins just run:

```
./install-vim.ps1
```

Remember, you need to have script execution on, if not just run this as an Administrator: `set-executionpolicy unrestricted`

## In Mac/Linux

Just run the `install-vim.sh` script and you are done.

## Plugins

I use [Vundle](https://github.com/VundleVim/Vundle.vim) for handling/installing Vim plugins, both scripts install Vundle and update/install plugins for Vim to use.
