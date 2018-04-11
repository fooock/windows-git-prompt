@echo off

set CUSTOM_PROMPT=^
$E[m$E[32m$E]9;8;"USERNAME"$E\@$E]9;8;"COMPUTERNAME"$E\$S$E[92m$P$E[90m$_^
$E[90m$G$E[m$S$E]9;12$E\

prompt %CUSTOM_PROMPT%