BREAK > unsorted_icons.txt
SETLOCAL EnableDelayedExpansion
FOR /L %%n IN (1 1 500) DO IF "!__cd__:~%%n,1!" neq "" SET /a "len=%%n+1"
SETLOCAL DisableDelayedExpansion
FOR /r unsorted_icons %%g IN (*.png) DO (
	SET "absPath=%%g"
	SETLOCAL EnableDelayedExpansion
	SET "relPath=!absPath:~%len%!"
	SET "relPath=!relPath:\=/!"
	SET "relPath=!relPath:unsorted_icons/=!"
	SET "relPath=!relPath:.png=!"
	echo(!relPath!>>unsorted_icons.txt
	ENDLOCAL
)
