$fontName = "Anonymice Nerd Font Complete Windows Compatible.ttf"
(New-Object System.Net.WebClient).DownloadFile("https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/AnonymousPro/complete/Anonymice%20Nerd%20Font%20Complete%20Windows%20Compatible.ttf","C:\cmd\sh\$fontName")
(New-Object -comObject Shell.Application).Namespace(0x14).CopyHere("C:\cmd\sh\$fontName",0x10)
Remove-Item "C:\cmd\sh\$fontName" -Force
