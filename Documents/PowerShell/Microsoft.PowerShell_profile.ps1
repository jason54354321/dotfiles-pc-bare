# Prevent shell dingding sound
Set-PSReadlineOption -BellStyle None

# Smooth
Set-PSReadLineOption -EditMode Emacs

# Variables
$Desktop = "C:/Users/jason/Desktop"

# Prompt
Import-Module posh-git
# Import-Module oh-my-posh
Import-Module Terminal-Icons
$ThemeFolder = "C:\Users\jason\.config\oh-my-posh/themes/"
$ThemeName = "amro-edited.omp.json"  
$Theme = $ThemeFolder + $ThemeName
oh-my-posh init pwsh --config $Theme| Invoke-Expression
# List of nice-seeing themes:
# emodipt-extend
# hunk
# json
# kushal
# markbull
# montys
# takuya
# tokyo
# tokyonight_storm
# uew
# zash

# Aliases
Set-Alias v nvim
Set-Alias vi nvim
Set-Alias vim nvim
Set-Alias l ls
Set-Alias ll ls
Remove-Alias sl -Force
Set-Alias la ls -Force
Set-Alias g git
Set-Alias rn Rename-Item

# Navigate one directory level up
Set-Alias .. "cd.."
# Navigate multi directory levels up
function cdup_2{cd ../..}
function cdup_3{cd ../../..}
Set-Alias ... cdup_2
Set-Alias .... cdup_3

# Bare dotfiles repo
function git_dotfile_alias{git --git-dir=$HOME\dotfiles --work-tree=$HOME\ $args}
Set-Alias config git_dotfile_alias

# Git status
function git_status{git status}
Set-Alias gs git_status

# Git log
function git_log_alias{git log --oneline --graph}
Set-Alias glog git_log_alias

# Go master branch
Remove-Alias gm -Force
function git_checkout_master{git checkout master}
Set-Alias gm git_checkout_master -Force

# Cmake setting
$Env:CMAKE_GENERATOR = 'MinGW Makefiles'
# gtest setting
$Env:GTEST_COLOR = 'yes'
