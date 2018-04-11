@echo off

:: Create an alias for cd to try to get the branch of the
:: current project in case of the user is in a git repo 
DOSKEY cd=cd $* ^&^& %~dp0\bashrc.cmd
