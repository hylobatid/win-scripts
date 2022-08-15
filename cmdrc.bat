@echo off

for /f "tokens=* usebackq" %%f in (`git config user.email`) do (
  set email=%%f
)
set /p hours=<C:\cmd\hours\log\cmdrc.txt
set PROMPT=$STime:$S$T$H$H$H$S$S$S$S$S$SGit:$S%email%$_$S$S$P$S$G$S

cd %homepath%
CMD
