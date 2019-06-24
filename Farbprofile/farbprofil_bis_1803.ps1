Set-PSReadlineOption -TokenKind Command   -ForegroundColor Black       -BackgroundColor White
Set-PSReadlineOption -TokenKind Comment   -ForegroundColor DarkGray    -BackgroundColor White
Set-PSReadlineOption -TokenKind Keyword   -ForegroundColor Green       -BackgroundColor White
Set-PSReadlineOption -TokenKind Member    -ForegroundColor Black       -BackgroundColor White
Set-PSReadlineOption -TokenKind None      -ForegroundColor DarkMagenta -BackgroundColor White
Set-PSReadlineOption -TokenKind Number    -ForegroundColor Black       -BackgroundColor White
Set-PSReadlineOption -TokenKind Operator  -ForegroundColor DarkGreen   -BackgroundColor White
Set-PSReadlineOption -TokenKind Parameter -ForegroundColor DarkGreen   -BackgroundColor White
Set-PSReadlineOption -TokenKind String    -ForegroundColor DarkCyan    -BackgroundColor White
Set-PSReadlineOption -TokenKind Type      -ForegroundColor DarkCyan    -BackgroundColor White
Set-PSReadlineOption -TokenKind Variable  -ForegroundColor DarkRed     -BackgroundColor White


$host.PrivateData.ErrorBackgroundColor = "Cyan"
$host.PrivateData.ErrorForegroundColor = "Red"