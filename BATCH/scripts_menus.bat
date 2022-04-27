@echo off
title ATIVIDADE 01
:loginx
mode 27,20
color f0
cls
rem comentario 
:menu
mode 30,30
color f0
cls
echo.
echo         ___      ___
echo        (o o)    (o o)
echo       (  V  )  (  V  ) 
echo ====/===m-m==/== m-m==========
echo        MENU PRINCIPAL
echo ==============================
echo.
echo [P]ACOTE OFFICE
echo [S]ERVICOS DE REDE
echo [A]PLICATIVOS WINDOWS
echo [E]NCERRAR SESSAO
echo [F]INALIZAR PROGRAMA
echo.			   
echo ==============================
echo.
set/p op=Escolha sua Opcao:

if /i %op% == P (goto:office)
if /i %op% == S (goto:servicos)
if /i %op% == A (goto:apps)
if /i %op% == E (goto:login)
if /i %op% == F (goto:sair) else (
      echo.
      echo ----------------------
      echo     Opcao Invalida!
      echo ----------------------
      pause >nul
      goto:menu)

:office
goto office

:servicos
goto servicos

:apps
goto apps

:login
echo.
set /p resp=Deseja encerrar o programa? [S/N]:
if /i %resp% == s (goto:loginx) else (goto:menu)

:sair
echo.
set /p resp=Deseja realmente sair? [S/N]:
if /i %resp% == s (exit) else (goto:menu)

color f0
:office
cls
echo.
echo              ___      
echo             (o o)    
echo            (  V  )  
echo =========/===m-m==/===========
echo 	PACOTE OFFICE
echo ==============================
echo.
echo [W]ORD
echo [E]XEL
echo [A]CCESS
echo [P]OWER POINT
echo [R]ETORNAR MENU 
echo.
echo ==============================
echo.
set/p pacotes=Escolha uma Opcao:

if /i %pacotes% == W (goto:texto)
if /i %pacotes% == E (goto:planilha)
if /i %pacotes% == A (goto:access)
if /i %pacotes% == P (goto:slides)
if /i %pacotes% == r (goto:menuprincipal) else (
      echo.
	  echo -----------------------------
	  echo    Opcao Invalida!
	  echo -----------------------------
	  echo.
	  pause
	  goto:office)

:texto
start winword.exe
goto office

:planilha
start excel.exe
goto office

:access
start msaccess.exe
goto office

:slides
start powerpnt.exe
goto office

:menuprincipal
goto menu

color f0
:servicos
cls
echo.
echo            ___      
echo           (o o)    
echo          (  V  )  
echo =======/===m-m==/=============
echo      SERVICOS DE REDE
echo ==============================
echo.
echo [N]AVEGAR INTERNET
echo [T]ESTAR CONEXAO DE REDE
echo [O]BTER O IP DA MAQUINA
echo [R]ETORNAR MENU 
echo.
echo ==============================
echo.
set/p serv=Escolha uma Opcao:

if /i %serv% == N (goto:web)
if /i %serv% == T (goto:teste)
if /i %serv% == O (goto:ip)
if /i %serv% == R (goto:menuprincipal) else (
      echo.
	  echo -----------------------------
	  echo    Opcao Invalida!
	  echo -----------------------------
	  echo.
	  pause
	  goto:servicos)

:web
echo.
set /p site=Digite o endereco da pagina:
start %site%
goto servicos

:teste
echo.
set /p testar=Digite o IP da maquina ou endereco pagina:
ping %testar% -t
goto servicos

:ip
ipconfig/all
pause
goto servicos

:menuprincipal
goto menu

color f0
:apps
cls
echo.
echo             ___      
echo            (o o)    
echo           (  V  )  
echo ========/===m-m==/============
echo     APLICATIVOS DO WINDOWS
echo ==============================
echo.
echo [P]AINT
echo [C]ALCULADORA
echo [B]LOCO DE NOTAS
echo [T]ECLADO VIRTUAL
echo [W]INDOWS EXPLORER
echo [R]ETORNAR AO MENU
echo.
echo ==============================
echo.
set/p appss=Escolha uma Opcao:

if /i %appss% == C (goto:calculadora)
if /i %appss% == T (goto:teclado)
if /i %appss% == W (goto:explorer)
if /i %appss% == P (goto:paint)
if /i %appss% == B (goto:notas)
if /i %appss% == R (goto:menuprincipal) else (
      echo.
	  echo -----------------------------
	  echo    Opcao Invalida!
	  echo -----------------------------
	  echo.
	  pause
	  goto:apps)

:calculadora
start calc.exe
goto:apps

:teclado
start osk.exe
goto:apps

:paint
start mspaint.exe
goto:apps

:explorer
start explorer.exe
goto:apps

:notas
start notepad.exe
goto:apps

:menuprincipal
goto menu
