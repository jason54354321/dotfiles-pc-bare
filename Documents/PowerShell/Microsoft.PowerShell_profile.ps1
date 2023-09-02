# Prevent shell dingding sound
Set-PSReadlineOption -BellStyle None

# Variables
$Desktop = "C:/Users/jason/Desktop"

# Prompt
Import-Module posh-git
Import-Module oh-my-posh
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

# Alias
Set-Alias v nvim
Set-Alias vi nvim
Set-Alias vim nvim
Set-Alias l ls
Set-Alias ll ls
Remove-Alias sl -Force
Set-Alias la ls -Force
Set-Alias g git
Set-Alias rn Rename-Item
Set-Alias .. "cd.."

function git_dotfile_alias{git --git-dir=$HOME\dotfiles --work-tree=$HOME\ $args}
Set-Alias config git_dotfile_alias

function git_log_alias{git log --oneline --graph}
Set-Alias glog git_log_alias

# Go directory shortcut
$mycode = "D:/aamycode"
function goMycode{ cd $mycode }
function goMycodeF{ cd $mycode/flutter }
Set-Alias	mc goMycode
Set-Alias	mcf goMycodeF

$vimConfig = "~/.config/nvim"
function vimVimConfig{ cd $vimConfig; vim init.vim}
Set-Alias vmv vimVimConfig

# Cmake setting
$Env:CMAKE_GENERATOR = 'MinGW Makefiles'
# gtest setting
$Env:GTEST_COLOR = 'yes'
