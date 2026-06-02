@ECHO OFF
PUSHD "%~dp0"
:: clean before run
CALL clean 2>nul 1>nul

SET FILENAME=SDUthesistemplate
SET XL=xelatex
SET LT=latex
SET BT=bibtex

%XL% %FILENAME%
%BT% %FILENAME%
%XL% %FILENAME%
%XL% %FILENAME%
::pause
CALL clean 2>nul 1>nul

start "" %FILENAME%.pdf
POPD

EXIT
