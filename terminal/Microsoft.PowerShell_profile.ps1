
# Prompt
# Import-Module oh-my-posh
# Import-Module posh-git
Import-Module Terminal-Icons
# Install-Module PSReadLine

oh-my-posh --init --shell pwsh --config ~/OneDrive/terminal-theme/wopian.omp.json | Invoke-Expression


#PSREadLine 
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -PredictionSource History

# which
function global:which ([string]$command) {
  if (-not($command)) { throw "ERROR: Please supply a command name" }
  (Get-Command $command).Path
}



# Alias 

# 删除冲突别名
Del alias:ni -Force

Set-Alias vim nvim
Set-Alias g git

# foront

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

