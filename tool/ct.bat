@echo off
rem author ����

if /i "%*"=="-h" (
  echo ct timeTurn [date^|timestamp] # ����ʱ����ʱ���ת��
  echo ct colorTurn [rgb^|html]      # rgb��html��ɫֵת��
) else node "%ROOT%tool\lib\function.js" %*