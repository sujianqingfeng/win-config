
# Import-Module oh-my-posh
oh-my-posh --init --shell pwsh --config ~/OneDrive/terminal-theme/zash.omp.json | Invoke-Expression
Import-Module posh-git

# 删除冲突别名
Del alias:ni -Force

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

