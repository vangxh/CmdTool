@echo off
rem author 鬼手

if /i "%*"=="-h" (
  echo ct timeTurn [date^|timestamp] # 日期时间与时间戳转换
  echo ct colorTurn [rgb^|html]      # rgb与html颜色值转换
) else node "%ROOT%tool\lib\function.js" %*