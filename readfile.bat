@echo off
for /f "tokens=*" %%a in (rs.txt) do (
  echo line=%%a
)
pause