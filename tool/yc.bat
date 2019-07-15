@echo off & setlocal EnableDelayedExpansion
rem author=鬼手

if not exist %ROOT%tool\lib\jre\bin\java.exe (
	echo jre未安装，请下载jre并复制到tool\lib目录下
) else (
	if "%2"=="" (
		set name=%~1
		set cmdline=%1 -o !name:~0,-3!min%~x1
	) else (
		set cmdline=%1 -o %2
	)
	call java -jar %ROOT%tool\lib\yuicompressor-2.4.8.jar %cmdline%
）
endlocal