@echo off

for %%A in (%*) do (
	if exist %%A (
		echo %%A already exists, could not create file.
	) else (
		copy NUL %%A >NUL
		echo %%A successfully created
	)
)
