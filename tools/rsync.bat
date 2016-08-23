@echo off
rem @author Õı–°∫œ

if not exist %CmdTool_ROOT%home\%USERNAME%\.ssh mkdir %CmdTool_ROOT%home\%USERNAME%\.ssh
%SHELL_ROOT%\bin\rsync %*