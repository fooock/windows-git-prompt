@echo off

set GIT_BRANCH=

REM Execute git branch command and redirect stderr to NUL
REM Note that we need to escape the redirectiond and pipe command 
REM to make the script work
FOR /f "tokens=2" %%a in ('git branch 2^> NUL ^| FINDSTR /b "* "') do set GIT_BRANCH=%%a

:: Detect if the user is currently using anu virtual env
SET CURRENT_ENV=%CONDA_DEFAULT_ENV%
IF [%GIT_BRANCH%] == [] ( GOTO :prompt ) ELSE ( GOTO :custom )

:custom
    SET CUSTOM_PROMPT=^
$E[m$E[32m$E]9;8;"USERNAME"$E\@$E]9;8;"COMPUTERNAME"$E\$S$E[92m$P$E[90m^
$S$C%GIT_BRANCH%$F$_^
$E[90m$G$E[m$S$E]9;12$E\
    prompt %CUSTOM_PROMPT%
    GOTO :eof

:prompt
    SET CUSTOM_PROMPT=^
$E[m$E[32m$E]9;8;"USERNAME"$E\@$E]9;8;"COMPUTERNAME"$E\$S$E[92m$P$E[90m$_^
$E[90m$G$E[m$S$E]9;12$E\
    prompt %CUSTOM_PROMPT%
    GOTO :eof
