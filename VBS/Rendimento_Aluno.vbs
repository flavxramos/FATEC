dim n1, n2, n3, resp, media, situacao

call entrada_notas
sub entrada_notas ()

n1=cdbl(inputbox("Digite a nota 01", "AVISO"))
n2=cdbl(inputbox("Digite a nota 02", "AVISO"))
n3=cdbl(inputbox("Digite a nota 03", "AVISO"))

media = round ((n1+n2+n3)/3,1)

if media < 4 then
	situacao = "REPROVADO!"
elseif media >= 4 and media < 7 then
	situacao = "EXAME!"
else 
	situacao = "APROVADO!"
end if

resp= msgbox("Rendimento do aluno" + vbnewline &_
				"Media final: " & media & "" + vbnewline &_
				"Situacao do Aluno: " & situacao & "" + vbnewline &_
				"Deseja efetuar um novo calculo?", vbqueston+vbyesno, "AVISO")
if resp = vbyes then
	call entrada_notas
else
	wscript.quit
end if
end sub