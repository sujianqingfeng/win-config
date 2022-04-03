
# Prompt
# Import-Module oh-my-posh
Import-Module posh-git
Import-Module Terminal-Icons
Install-Module PSReadLine

oh-my-posh --init --shell pwsh --config ~/OneDrive/terminal-theme/zash.omp.json | Invoke-Expression


#PSREadLine 
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -PredictionSource History

# 删除冲突别名
Del alias:ni -Force

# Alias 

Set-Alias vim nvim
Set-Alias g git

# foront
# Set-Alias d nr dev 
# Set-Alias ds nr server
# Set-Alias db nr build
# Set-Alias ns nr start



function d {
  nr dev
}

function ds{
  nr serve
}

function db{
  nr build
}

function ns{
  nr start
}

