@echo off
rem author ����

if not exist %ROOT%tool\node\node.exe (
	echo node.exeδ��װ��������node.exe�����Ƶ�tool\nodeĿ¼��
) else %ROOT%tool\node\node.exe "%ROOT%tool\node\node_modules\npm\bin\npm-cli.js" %* --legacy-bundling