@echo off
rem author 鬼手

if not exist %ROOT%tool\node\node.exe (
	echo node.exe未安装，请下载node.exe并复制到tool\node目录下
) else %ROOT%tool\node\node.exe "%ROOT%tool\node\node_modules\npm\bin\npm-cli.js" %* --legacy-bundling