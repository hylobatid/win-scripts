@echo off
  set psdir="C:\%homepath%\Documents\WindowsPowerShell"
  if not exist %psdir% mkdir %psdir%
  if not exist %psdir%\Microsoft.PowerShell_profile.ps1 (
    xcopy C:\CMD\psrc.ps1 %psdir%\Microsoft.Powershell_profile.ps1 
  ) else (
    xcopy C:\CMD\psrc.ps1 %psdir%\Microsoft.PowerShell_profile.ps1 /Y > nul
  )
  echo.
  powershell.exe -ExecutionPolicy bypass -NoLogo
