@echo off
rem @author ��С��

if not exist %CmdTool_ROOT%home\%USERNAME%\.ssh mkdir %CmdTool_ROOT%home\%USERNAME%\.ssh
%SHELL_ROOT%\bin\rsync %*