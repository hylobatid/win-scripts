@echo off
echo Numbered Domain Search
echo.
echo Very specific tool used to find out how many instances of a domain with
echo numbers after e.g. test1.com, test2.com, test3.com, etc. are live/pingable.
echo.
set /p start="Enter the start (e.g. thisdomain, not thisdomain.com): "
set /p ender="Enter the end (e.g. .com, etc) if applicable: "
set /p no="Search to number... : "
echo Searching %start%X%ender%, to number %no%...
for /l %%x in (1, 1, %no%) do (
ping -n 1 %start%%%x%ender% | find "TTL=" >nul
if not errorlevel 1 (  echo %start%%%x%ender% is online )
)
