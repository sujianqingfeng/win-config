
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

# git
Set-Alias g git

function gcm([string]$message){
  git commit -m $message
}

function gb{
  git branch
}

function gbd([string]$name){
  git branch -D $name 
}

function gl{
  git log 
}

function ga{
  git add
}

function gA{
  git add -A
}

function gcam([string]$message) {
  git add -A && git commit -m $message 
}

function master {
  git checkout master
}

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


function t{
  nr test
}

function ns{
  nr start
}

