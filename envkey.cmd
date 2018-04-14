@echo off

:: Create an alias for cd and git to try to get the branch of the
:: current project in case of the user is in a git repo 
DOSKEY cd=cd $* ^&^& %~dp0\winrc.cmd
DOSKEY git=git $* ^&^& %~dp0\winrc.cmd

:: Aliases for virtual envs
DOSKEY activate=activate $* ^&^& %~dp0\winrc.cmd
DOSKEY deactivate=deactivate ^&^& %~dp0\winrc.cmd
