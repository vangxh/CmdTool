@echo off & setlocal EnableDelayedExpansion
rem @author 王小合
set order="TortoiseProc.exe"
set current=./
set extra="/closeonend:2"

if /i "%1"=="checkout" (
  if "%3"=="-n" (
    set extra=""
  ) else if not "%3"=="" (
    set current=%3
  )
  if "%4"=="-n" set extra=""
  start "SVN-%1" cmd /c "mode con cols=30 lines=2 &echo. %1中... & %order% /command:%1 /url:"%2" /path:"!current!" !extra!
) else (
  if "%2"=="-n" (
    set extra=""
  ) else if not "%2"=="" (
    set current=%2
  )
  if "%3"=="-n" set extra=""
  start "SVN-%1" cmd /c "mode con cols=30 lines=2 &echo. %1中... & %order% /command:%1 /path:"!current!" !extra!"
)
endlocal