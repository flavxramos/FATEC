dim farol, cor, resp
call inicio
sub inicio
farol=cint(inputbox("[1] Verde" + vbnewline &_
		    "[2] Amarelo" + vbnewline &_
		    "[3] Vermelho" + vbnewline &_
		    "[0 ou 10] Encerrar Script", "CORES DO SEM�FORO"))
Select case farol
	Case 1:
	cor="Verde - Siga em frente!"
	
	Case 2:
	cor="Amarelo - Aten��o!"
	
	Case 3:
	cor="Vermelho - PARE!"

	Case 0,10:
	resp=msgbox("Deseja encerrar?", vbquestion+vbyesno,"ATEN��OOOOO!!")

if resp=vbyes then
	wscript.quit
else
	call inicio
end if

case else
	cor="Op��o Inv�lida!!"
end select

msgbox(""& cor &""), vbinformation+vbokonly, "CORES DO SEM�FORO"
call inicio
end sub
	