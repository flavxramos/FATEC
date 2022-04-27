@echo off
title Exemplo Estrutura de Repeticao
mode 60,30
color 0a
:inicio
cls
echo.
echo =============================
echo   GERENCIADOR DE ARQUIVOS
echo =============================
echo [1] Gerar Arquivos
echo [2] Organizar Arquivos
echo [3] Ocultar Arquivos
echo [4] Exibir Arquivos
echo [S] Sair do Script 
echo =============================
echo.
set /p op=Escolha sua Opcao :
if %op% equ 1 (goto:gerar)
if %op% equ 2 (goto:organizar)
if %op% equ 3 (goto:ocultar)
if %op% equ 4 (goto:exibir)
if /i %op% equ s (exit) else (
   echo.
   echo Opcao Invalida!
   echo.
   pause 
   goto:inicio)

:gerar
set /p arq=Digite o nome do arquivo:
set /p qtde=Digite a quantidade de arquivos:
set /p ext=Digite a extensao do arquivo:
for /L %%n in (1,1,%qtde%) do echo Fatec SCS > %arq%%%n.%ext%
echo.
echo Arquivos Gerados com Sucesso!
pause 
goto:inicio   

:organizar 
set /p pasta=Digite a pasta a ser criada:
set /p ext=Digite a extensao do arquivo:
md %pasta%
move *.%ext% C:\Users\flavia\Desktop\%pasta%\
echo.
echo Arquivos Organizados com Sucesso!
pause 
goto:inicio 

:ocultar
set /p pasta=Digite a pasta ou arquivo a ser ocultado:
c:
cd\Users\flavia\Desktop
attrib %pasta% +r +h
echo.
echo Arquivos e Pastas ocultadas com sucesso!
pause 
goto:inicio 

:exibir
set /p pasta=Digite a pasta ou arquivo a ser exibido:
c:
cd\Users\flavia\Desktop
attrib %pasta% -r -h
echo.
echo Arquivos e Pastas exibidas com sucesso!
pause 
goto:inicio 