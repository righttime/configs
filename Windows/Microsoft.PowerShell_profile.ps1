oh-my-posh init pwsh --config 'D:\Git\configs\Windows\iterm2.omp.json' | Invoke-Expression

#Import-Module PSColor
#Import-Module posh-git
#Import-Module git-aliases -DisableNameChecking
Import-Module PSReadLine

#PSReadline settings
Set-PSReadLineOption -PredictionViewStyle InlineView #ListView
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -Colors @{emphasis = '#99aaff'; inlinePrediction = '267233'}
Set-PSReadLineOption -HistoryNoDuplicates
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Function goWork{
    cd D:\Git
}