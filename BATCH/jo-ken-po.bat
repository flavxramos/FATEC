@echo off
title JOKENPOZIN
mode 40,20
color f0
:nome
cls
echo.
echo ----------------------------------------
echo              IDENTIFIQUE-SE!!
echo ----------------------------------------
echo.
set /p nome=Digite seu Nome:
	(goto:jokenpo)


rem ::::::::::::::::::jogo:::::::::::::::::::
color 3F

set /a ganhou=0
set /a perdeu=0
set /a empate=0

:jokenpo
mode 37,35
cls

set /a num=(%random% %%5) + 1

echo.
echo                 ___              
echo                //\\\            
echo               ( o o )            
echo                \_-_/         
echo               / \ / \        
echo              /   .   \      
echo _____________\_\___/_/_______________
echo.    
echo =====================================
echo       BEM-VINDO AO JO-KEN-PO!!
echo =====================================
echo 	  Vitorias: %ganhou%
echo 	  Derrotas: %perdeu%
echo 	  Empates:  %empate%
echo =====================================
echo.
echo  [1] PEDRA
echo  [2] PAPEL
echo  [3] TESOURA
echo  [4] LAGARTO
echo  [5] SPOCK	
echo  [E] ENCERRAR JOGO
echo  [R] REGRAS 
echo.  
echo =====================================
echo.
set/p escolha=Escolha sua Opcao: 

if /i %escolha% == 1 (goto:pedra)
if /i %escolha% == 2 (goto:papel)
if /i %escolha% == 3 (goto:tesoura)
if /i %escolha% == 4 (goto:lagarto)
if /i %escolha% == 5 (goto:spock)
if /i %escolha% == R (goto:regra)
if /i %escolha% == E (goto:sair) 
      echo.
      echo ----------------------
      echo     Opcao Invalida!
      echo ----------------------
      pause >nul
      goto:jokenpo

rem (PEDRA)
:pedra
if %num% == 1 (
	echo.
	echo.
	echo Pedra X Pedra
        echo.
	echo EMPATE!!
	pause > nul
	set /a empate=%empate% +1
	goto:jokenpo
		)

if %num% == 2 (
	echo.
	echo.
	echo Pedra X Papel
        echo.
	echo %nome% PERDEU!!
	echo Papel cobre a pedra..
	pause > nul
	set /a perdeu=%perdeu% +1
	goto:jokenpo
		)

if %num% == 3 (
	echo.
	echo.
	echo Pedra X Tesoura
        echo.
	echo %nome% GANHOUUUUUUU!!
	echo Pedra quebra a tesoura..
	pause > nul
	set /a ganhou=%ganhou% +1
	goto:jokenpo
		)

if %num% == 4 (
	echo.
	echo.
	echo Pedra X Lagarto
        echo.
	echo %nome% GANHOUUUUUUU!!
	echo Pedra esmaga o lagarto..
	pause > nul
	set /a ganhou=%ganhou% +1
	goto:jokenpo
		)

if %num% == 5 (
	echo.
	echo.
	echo Pedra X Spock
        echo.
	echo %nome% PERDEU!!
	echo O spock vaporiza a pedra..
	pause > nul
	set /a perdeu=%perdeu% +1
	goto:jokenpo
		)



rem (PAPEL)
:papel
if %num% == 1 (
	echo.
	echo.
	echo Papel X Pedra
        echo.
	echo %nome% GANHOUUUUUUU!!
	echo O papel cobre a pedra..
	pause > nul
	set /a ganhou=%ganhou% +1
	goto:jokenpo
		)

if %num% == 2 (
	echo.
	echo.
	echo Papel X Papel
        echo.
	echo EMPATE!!
	pause > nul
	set /a empate=%empate% +1
	goto:jokenpo
		)

if %num% == 3 (
	echo.
	echo.
	echo Papel X Tesoura
        echo.
	echo %nome% PERDEU!!
	echo A tesoura corta o papel..
	pause > nul
	set /a perdeu=%perdeu% +1
	goto:jokenpo
		)

if %num% == 4 (
	echo.
	echo.
	echo Papel X Lagarto
        echo.
	echo %nome% PERDEU!!
	echo O lagarto come o papel..
	pause > nul
	set /a perdeu=%perdeu% +1
	goto:jokenpo
		)

if %num% == 5 (
	echo.
	echo.
	echo Papel X Spock
        echo.
	echo %nome% GANHOUUUUUUU!!
	echo O papel refuta o spock..
	pause > nul
	set /a ganhou=%ganhou% +1
	goto:jokenpo
		)



rem (TESOURA)
:tesoura
if %num% == 1 (
	echo.
	echo.
	echo Tesoura X Pedra
        echo.
	echo %nome% PERDEU!!
	echo A pedra quebra a tesoura..
	pause > nul
	set /a perdeu=%perdeu% +1
	goto:jokenpo
		)

if %num% == 2 (
	echo.
	echo.
	echo Tesoura X Papel
        echo.
	echo %nome% GANHOUUUUUUU!!
	echo A tesoura corta o papel..
	pause > nul
	set /a ganhou=%ganhou% +1
	goto:jokenpo
		)

if %num% == 3 (
	echo.
	echo.
	echo Tesoura X Tesoura
        echo.
	echo EMPATE!!
	pause > nul
	set /a empate=%empate% +1
	goto:jokenpo
		)

if %num% == 4 (
	echo.
	echo.
	echo Tesoura X Lagarto
        echo.
	echo %nome% GANHOUUUUUUU!!
	echo A tesoura mata o lagarto..
	pause > nul
	set /a ganhou=%ganhou% +1
	goto:jokenpo
		)

if %num% == 5 (
	echo.
	echo.
	echo Tesoura X Spock
        echo.
	echo %nome% PERDEU!!
	echo O spock quebra a tesoura..
	pause > nul
	set /a perdeu=%perdeu% +1
	goto:jokenpo
		)




rem (LAGARTO)
:lagarto
if %num% == 1 (
	echo.
	echo.
	echo Lagarto X Pedra
        echo.
	echo %nome% PERDEU!!
	echo A pedra esmaga o lagarto..
	pause > nul
	set /a perdeu=%perdeu% +1
	goto:jokenpo
		)

if %num% == 2 (
	echo.
	echo.
	echo Lagarto X Papel
        echo.
	echo %nome% GANHOUUUUUUU!!
	echo Lagarto come o papel..
	pause > nul
	set /a ganhou=%ganhou% +1
	goto:jokenpo
		)

if %num% == 3 (
	echo.
	echo.
	echo Lagarto X Tesoura
        echo.
	echo %nome% PERDEU!!
	echo A tesoura mata o lagarto..
	pause > nul
	set /a perdeu=%perdeu% +1
	goto:jokenpo
		)

if %num% == 4 (
	echo.
	echo.
	echo Lagarto X Lagarto
        echo.
	echo EMPATE!!
	pause > nul
	set /a empate=%empate% +1
	goto:jokenpo
		)

if %num% == 5 (
	echo.
	echo.
	echo Lagarto X Spock
        echo.
	echo %nome% GANHOUUUUUUU!!
	echo Lagarto envenena o spock..
	pause > nul
	set /a ganhou=%ganhou% +1
	goto:jokenpo
		)



REM (SPOCK)
:spock
if %num% == 1 (
	echo.
	echo.
	echo Spock X Pedra
        echo.
	echo %nome% GANHOUUUUUUU!!
	echo O spock vaporiza a pedra..
	pause > nul
	set /a ganhou=%ganhou% +1
	goto:jokenpo
		)

if %num% == 2 (
	echo.
	echo.
	echo Spock X Papel
        echo.
	echo %nome% PERDEU!!
	echo O papel refuta o spock..
	pause > nul
	set /a perdeu=%perdeu% +1
	goto:jokenpo
		)

if %num% == 3 (
	echo.
	echo.
	echo Spock X Tesoura
        echo.
	echo %nome% GANHOUUUUUUU!!
	echo O spock quebra a tesoura..
	pause > nul
	set /a ganhou=%ganhou% +1
	goto:jokenpo
		)

if %num% == 4 (
	echo.
	echo.
	echo Spock X Lagarto
        echo.
	echo %nome% PERDEU!!
	echo Lagarto envenena o spock..
	pause > nul
	set /a perdeu=%perdeu% +1
	goto:jokenpo
		)

if %num% == 5 (
	echo.
	echo.
	echo Spock X Spock
        echo.
	echo EMPATE!!
	pause > nul
	set /a empate=%empate% +1
	goto:jokenpo
		)

:sair
echo.
set /p resp=Deseja sair do jogo? [S/N]:
if /i %resp% == s (exit) else (goto:jokenpo)



color 3F
:regra
mode 85,20
cls
echo.       
echo -------------------------------------------------------------------------------------
echo     			    REGRAS DO JOGO
echo -------------------------------------------------------------------------------------
echo PEDRA:
echo		Empata com Pedra; Ganha de Tesoura e Lagarto; Perde de Papel e Spock;

echo PAPEL:
echo 	Empata com Papel; Ganha de Pedra e Spock; Perde de Tesoura e Lagarto;

echo TESOURA:
echo 	Empata com Tesoura; Ganha de Lagarto e Papel; Perde de Pedra e Spock;

echo LAGARTO:
echo 	Empata com Lagarto; Ganha de Papel e Spock; Perde de Pedra e Tesoura;

echo SPOCK:
echo 	Empata com Spock; Ganha de de Pedra e Tesoura; Perde de Lagarto e Papel;	
echo -------------------------------------------------------------------------------------
echo.
set/p op=Pressione a tecla R para continuar...
if /i %op% == r (goto:jokenpo) else (goto:regra) 
	
