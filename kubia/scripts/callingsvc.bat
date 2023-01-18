@echo off
SET /A "index = 1"
SET /A "count = 5"
:while
if %index% leq %count% (  
   curl http://34.141.149.119  
   goto :while
)