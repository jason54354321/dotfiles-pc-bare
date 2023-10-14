# dotfiles-pc-bare
## Rime
1. Download .exe from [the link](https://rime.im/download/)
2. Assign config folder to `~/.config/rime`
2. Right click on `Rime` application icon and rebuild

## Git
```powershell
    # IMPORTANT!!!
    git config --global core.autocrlf input
    git config --global pull.rebase true
    git congit --global user.name "Jason"
    git config --global core.editor "vim"
```

## PowerShell
1. Copy "powershell\Microsoft.PowerShell_profile.ps1" to `$PROFILE`
2. Copy "powershell\Microsoft.settings.json" to powershell's json folder
3. Download [scoop](https://scoop.sh/)
```powershell
    > Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
    > irm get.scoop.sh | iex
```
4. Install [oh-my-posh](https://ohmyposh.dev/docs/installation/windows)
```powershell
    scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
```
5. Install plugins
```powershell
    Install-Module -Name z;
    Install-Module posh-git;
    Install-Module oh-my-posh;
    Install-Module Terminal-Icons;
    print("Done.");
```

## Oh-my-posh
* Currently using custom theme: `amro-edited` 

## Nvim

### Install
1. Add a file named `init.vim` into C:\Users\jason\AppData\Local\nvim.
2. Then source dotfile. 
    ```vim
    source ~/.config/nvim/init.vim
    ```

3. Install vim-plug:  
    ```PowerShell
    iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
        ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
    ```
### Plugins
1. `PlugInstall` inside nvim.
    > [!NOTE]
    > `Golang`, `gcc`, `python3`, `LLVM(clang)` are needed to execute install all plugin properly.
    
1. Install `node (14)`:
  
1. LSP:
    ```PowerShell
    scoop install lua-language-server
    npm install -g vim-language-server
    npm install -g typescript typescript-language-server
    npm install -g dockerfile-language-server-nodejs
    npm install -g @microsoft/compose-language-service
    npm install -g pyright
    npm install -g vls
    ```

1. Telescope:
    ```PowerShell
    scoop install ripgrep
    scoop install fd
    ```
