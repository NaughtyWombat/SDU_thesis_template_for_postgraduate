@ECHO OFF
PUSHD "%~dp0"

SET FILENAME=SDUthesistemplate
SET XL=xelatex
SET BT=bibtex

%XL% %FILENAME%
%BT% %FILENAME%
%XL% %FILENAME%
%XL% %FILENAME%
pause
CALL clean
POPD
