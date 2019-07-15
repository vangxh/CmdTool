@echo off & setlocal EnableDelayedExpansion
rem author=鬼手
if not exist %ROOT%tool\lib\jre\bin\java.exe (
	echo jre未安装，请下载jre并复制到tool\lib目录下
) else (
	if "%3"=="-m" (
		set cmdline=--js=%1 --js_output_file= %2
	) else (
		if "%2"=="" (
			set name=%~1
			set cmdline=--js %1 --js_output_file !name:~0,-2!min.js
		) else (
			set cmdline=--js %1 --js_output_file %2
		)
	)
	call java -jar %ROOT%tool\lib\compiler.jar %cmdline%
)
endlocal