"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1

mkdir "%PREFIX%\share\jupyter\kernels\juniper"
IF %ERRORLEVEL% NEQ 0 exit 1

xcopy /f inst\extdata\logo*.png "%PREFIX%\share\jupyter\kernels\juniper\"
IF %ERRORLEVEL% NEQ 0 exit 1

xcopy /f "%RECIPE_DIR%\kernel.json" "%PREFIX%\share\jupyter\kernels\juniper\"
IF %ERRORLEVEL% NEQ 0 exit 1
