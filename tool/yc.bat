@echo off & setlocal EnableDelayedExpansion
rem author=����

if not exist %ROOT%tool\lib\jre\bin\java.exe (
	echo jreδ��װ��������jre�����Ƶ�tool\libĿ¼��
) else (
	if "%2"=="" (
		set name=%~1
		set cmdline=%1 -o !name:~0,-3!min%~x1
	) else (
		set cmdline=%1 -o %2
	)
	call java -jar %ROOT%tool\lib\yuicompressor-2.4.8.jar %cmdline%
��
endlocal