# .vim

## Windows Install Instructions (from PowerShell)
```powershell
cd ~
git clone https://github.com/treymack/.vim.git .vim
cmd.exe
mklink /h .vimrc .vim\.vimrc
exit
# must use full path here or git will create a ~ folder wherever you are
git clone https://github.com/VundleVim/Vundle.vim.git C:\Users\<username>\.vim\bundle\Vundle.vim\
```
