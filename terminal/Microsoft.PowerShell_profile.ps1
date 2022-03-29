# Import-Module oh-my-posh
oh-my-posh --init --shell pwsh --config ~/OneDrive/terminal-theme/zash.omp.json | Invoke-Expression
Import-Module posh-git


# alias 
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

