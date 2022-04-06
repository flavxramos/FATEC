@echo off
title SORTEIO
rem comentario 
mode 45,30
color f0

:sorteio

set /a num=(%random% %%50) + 1
set /a cont=6
cls

:sorteian
cls
set /a cont=%cont%-1

echo.
echo =============================================
echo   ADIVINHE O NUMERO SORTEADO ENTRE 1 E 50 
echo ---------------------------------------------
echo 	   QTDE DE TENTATIVAS: %cont%
echo ---------------------------------------------
echo =============================================
echo.
if %cont% == 0 (goto:perdeu)
echo.

set /p palpite=DIGITE SEU PALPITE:

if %palpite% GTR 50 (goto:invalido)
if %palpite% LSS 1 (goto:menorzinho)
if %palpite% == %num% (goto:parabens)
if %palpite% GTR %num% (goto:maior)
if %palpite% LSS %num% (goto:menor)	


:invalido
	echo.
	echo -------------------------------------------- 
	echo		OPCAO INVALIDA!!
	echo 	Digite numeros entre 1 e 50
	echo -------------------------------------------- 
	echo.
	pause >nul
	set /a cont=%cont% +1
	goto:sorteian 

:menorzinho
	echo.
	echo -------------------------------------------- 
	echo		OPCAO INVALIDA!!
	echo 	Digite numeros entre 1 e 50
	echo -------------------------------------------- 
	echo.
	pause >nul
	set /a cont=%cont% +1
	goto:sorteian 

:parabens
	echo.
	echo -------------------------------------------- 
	echo		PARABENSSSSS!!! VOCE ACERTOU!
	echo 	O numero sorteado foi: %num%
	echo -------------------------------------------- 
	echo.
	goto:sair

:maior
	echo.
	echo -------------------------------------------- 
	echo			ERROUUU!!!!
	echo     	Digite um numero menor!!
	echo -------------------------------------------- 
	echo.
	pause >nul	
	set /a cont=%cont% 
	goto:sorteian

:menor
	echo.
	echo -------------------------------------------- 
	echo			ERROUUU!!!
	echo    	 Digite um numero maior!!
	echo -------------------------------------------- 
	echo.
	pause >nul	
	set /a cont=%cont% 
	goto:sorteian
       	     

:perdeu
	echo.
	echo -------------------------------------------- 
	echo	     SUAS TENTATIVAS ACABARAM!!!!!!!
	echo -------------------------------------------- 
	echo.
	pause >nul
	set /a cont=%cont%
	goto:sair	
	
:sair
set /p resp=Deseja jogar novamente? (S/N): 
if /i %resp% == s (goto:sorteio) else (exit)
