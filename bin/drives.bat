@echo off

	set shortcuts=C:\CMD\shortcuts
	if not exist %shortcuts% ( mkdir %shortcuts% )

	for %%a in (a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z) do (
		if exist %%a:\ (
			echo @echo off>%shortcuts%\%%a.bat
			echo REM added automatically by script>>%shortcuts%\%%a.bat
			echo %%a:>>%shortcuts%\%%a.bat
			echo %%a:\ has been added as a shortcut
		) else (
			echo %%a:\ does not exist
		)
	)
