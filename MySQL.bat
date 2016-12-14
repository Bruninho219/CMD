chcp 1252
@echo off
goto menu

:main
cls
pause
goto menu

:menu
cls
echo Estado para que fique o servico MySQL57
echo 0- OFF   1- ON
set/p "opc=>"

if %opc%==0 goto off
if %opc%==1 goto on
pause
cls
goto menu

:on
rem "net stop " + nome_do_serviço
net start MySQL57
goto fim

:off
rem "net stop " + nome_do_serviço
net stop MySQL57
goto fim

:fim
pause
@echo.
@echo.
echo Deseja sair?
echo 0- Não 1- Sim
set/p "x=>"

if %x%==0 goto main
if %x%==1 exit
:fim
