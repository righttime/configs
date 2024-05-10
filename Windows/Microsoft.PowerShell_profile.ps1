oh-my-posh init pwsh --config 'D:\Git\configs\Windows\iterm2.omp.json' | Invoke-Expression

Import-Module PSColor
Import-Module posh-git
Import-Module git-aliases -DisableNameChecking
Import-Module PSReadLine


Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key "Tab" -Function MenuComplete
Set-PSReadlineKeyHandler -Key "Ctrl+d" -Function ViExit
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineOption -Colors @{ InlinePrediction = "#267233" }