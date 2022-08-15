@echo off
set in=%1
set out=%2
shift
shift
xcopy "%in%" "%out%"
