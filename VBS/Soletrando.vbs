dim acertos, resp(5), name, n, i
dim nivelone(10), niveltwo(10), nivelthree(10), nivelfour(10), pontuacao
dim pular, audio, ouvir, again, encerrar_jogo

call carregar_voz
sub carregar_voz()
set audio=CreateObject("SAPI.SPVOICE")
audio.volume=100
audio.rate=2 
call name_jogador
end sub 

sub name_jogador()
name=(inputbox("Digite o nome do jogador","SOLETRANDO"))
call levelone
end Sub

sub levelone()
ouvir = 0
pular = 0
i = 0
acertos = 0

nivelone(1)="quiabo"
nivelone(2)="pássaro"
nivelone(3)="tesoura"
nivelone(4)="guerra"
nivelone(5)="cabeleireiro"
nivelone(6)="vidro"
nivelone(7)="pincel"
nivelone(8)="fósforo"
nivelone(9)="chapéu"
nivelone(10)="agulha"
call sorteio
end Sub

sub sorteio()
do while i<5
randomize(second(time))
	n=int(rnd*10)+1
call chamar_audioone 
Loop
call next_level
call leveltwo
call next_level
call levelthree
call next_level
call levelfour
end sub

sub chamar_audioone()
audio.speak("A palavra que deve ser escrita é "& nivelone(n) &"")
call condicao 
end Sub

sub condicao()
resp(i)=(inputbox("Nome do jogador: "& name &"" + vbnewline &_
					"[O] Ouvir a palavra novamente" + vbnewline &_
					"[P] Pular a palavra" + vbnewline &_
					"[E] Encerrar o jogo"))
if (UCase(resp(i))=(UCase("o"))) Then
	if ouvir=0 Then
		ouvir=ouvir+1
		call chamar_audioone 
	else 
		msgbox("O recurso de ouvir a palavra novamente já foi utilizada anteriormente"), vbinformation+vbokonly, "ATENÇÃO"
		call condicao 
	end if
end if

if (UCase(resp(i))=(UCase("p"))) Then
	if pular=0 Then
		pular=pular+1
		call sorteio 
	Else 
			msgbox("O recurso de pular a palavra já foi utilizada anteriormente"), vbinformation+vbokonly, "ATENÇÃO"
			call condicao
	end if
end if

if (UCase(resp(i))=(UCase("e"))) Then
	encerrar_jogo=msgbox("Tem certeza que deseja encerrar o jogo? ", vbQuestion+vbyesno, "ATENÇÃO")
	if encerrar_jogo=vbyes Then
		wscript.quit
	Else
		call condicao
	end if
end if

if nivelone(n) = resp(i) Then
	acertos=acertos+1
	i=i+1
	select case acertos
			case 1:
					pontuacao=1000
			case 2:
					pontuacao=2000
			case 3:
					pontuacao=3000
			case 4:
					pontuacao=4000
			case 5:
					pontuacao=5000
	end select
	msgbox("Nome do jogador: "& name &"" + vbnewline &_
			"Nivel 1" + vbnewline &_
			"Palavras acertadas: "& acertos &"" + vbnewline &_
			"Pontuação: "& pontuacao &""), vbinformation+vbokonly, "LEVEL 1"
	call sorteio
Else
	if (UCase(resp(i)))<>(UCase("p")) and (UCase(resp(i)))<>(UCase("o")) then
		again=msgbox("Você errou e perdeu o game!! " + vbnewline &_
						"Deseja jogar novamente? ", vbExclamation + vbyesno, "PERDEEEEEEEEEEU")
		if again=vbyes Then
			call levelone
		Else
			wscript.quit
		end if
	end if  
end if
end sub

sub leveltwo()
i = 0
pular = 0
ouvir = 0
niveltwo(1)="bege"
niveltwo(2)="mortadela"
niveltwo(3)="folclore"
niveltwo(4)="jejum"
niveltwo(5)="faxina"
niveltwo(6)="mexer"
niveltwo(7)="absurdo"
niveltwo(8)="micróbio"
niveltwo(9)="caranguejo"
niveltwo(10)="enxergar"
call sorteiotwo
end sub

sub sorteiotwo()
do while i<5
randomize(second(time))
	n=int(rnd*10)+1
call chamar_audiotwo 
Loop
end sub

sub chamar_audiotwo()
audio.speak("A palavra que deve ser escrita é "& niveltwo(n) &"")
call condicaotwo 
end Sub

sub condicaotwo()
resp(i)=(inputbox("Nome do jogador: "& name &"" + vbnewline &_
					"[O] Ouvir a palavra novamente" + vbnewline &_
					"[P] Pular a palavra" + vbnewline &_
					"[E] Encerrar o jogo"))

if (UCase(resp(i))=(UCase("o"))) Then
	if ouvir=0 Then
		ouvir=ouvir+1
		call chamar_audiotwo
	else 
		msgbox("O recurso de ouvir a palavra novamente já foi utilizada anteriormente"), vbinformation+vbokonly, "ATENÇÃO"
		call condicaotwo
	end if
end if

if (UCase(resp(i))=(UCase("p"))) Then
	if pular=0 Then
		pular=pular+1
		call sorteiotwo 
	Else 
		msgbox("O recurso de pular a palavra já foi utilizada anteriormente"), vbinformation+vbokonly, "ATENÇÃO"
		call condicaotwo
	end if
end if

if (UCase(resp(i))=(UCase("e"))) Then
	encerrar_jogo=msgbox("Tem certeza que deseja encerrar o jogo? ", vbQuestion+vbyesno, "ATENÇÃO")
	if encerrar_jogo=vbyes Then
		wscript.quit
	Else
		call condicaotwo
	end if
end if

if niveltwo(n) = resp(i) Then
	acertos=acertos+1
	i=i+1
	select case acertos
			case 6:
					pontuacao=10000
			case 7:
					pontuacao=20000
			case 8:
					pontuacao=30000
			case 9:
					pontuacao=40000
			case 10:
					pontuacao=50000
	end select
	msgbox("Nome do jogador: "& name &"" + vbnewline &_
			"Nivel 2" + vbnewline &_
			"Palavras acertadas: "& acertos &"" + vbnewline &_
			"Pontuação: "& pontuacao &""), vbinformation+vbokonly, "LEVEL 2"
	call sorteiotwo
Else
	if (UCase(resp(i)))<>(UCase("p")) and (UCase(resp(i)))<>(UCase("o")) then
		again=msgbox("Você errou e perdeu o game!! " + vbnewline &_
						"Deseja jogar novamente? ", vbExclamation + vbyesno, "PERDEEEEEEEEEEU")
		if again=vbyes Then
			call levelone
		Else
			wscript.quit
		end if
	end if  
end if
end sub

sub levelthree()
i = 0
pular = 0
ouvir = 0
nivelthree(1)="hélice"
nivelthree(2)="aptidão"
nivelthree(3)="asterisco"
nivelthree(4)="periquito"
nivelthree(5)="cônjuge"
nivelthree(6)="bicarbonato"
nivelthree(7)="torácico"
nivelthree(8)="sessenta"
nivelthree(9)="empecilho"
nivelthree(10)="macete"
call sorteiothree
end sub

sub sorteiothree()
do while i<5
randomize(second(time))
	n=int(rnd*10)+1
call chamar_audiothree
Loop
end sub

sub chamar_audiothree()
audio.speak("A palavra que deve ser escrita é "& nivelthree(n) &"")
call condicaothree
end Sub

sub condicaothree()
resp(i)=(inputbox("Nome do jogador: "& name &"" + vbnewline &_
					"[O] Ouvir a palavra novamente" + vbnewline &_
					"[P] Pular a palavra" + vbnewline &_
					"[E] Encerrar o jogo"))

if (UCase(resp(i))=(UCase("o"))) Then
	if ouvir=0 Then
		ouvir=ouvir+1
		call chamar_audiothree
	else 
		msgbox("O recurso de ouvir a palavra novamente já foi utilizada anteriormente"), vbinformation+vbokonly, "ATENÇÃO"
		call condicaothree
	end if
end if

if (UCase(resp(i))=(UCase("p"))) Then 
	if pular=0 Then
		pular=pular+1
		call sorteiothree
	Else 
			msgbox("O recurso de pular a palavra já foi utilizada anteriormente"), vbinformation+vbokonly, "ATENÇÃO"
			call condicaothree
	end if
end if

if (UCase(resp(i))=(UCase("e"))) Then
	encerrar_jogo=msgbox("Tem certeza que deseja encerrar o jogo? ", vbQuestion+vbyesno, "ATENÇÃO")
	if encerrar_jogo=vbyes Then
		wscript.quit
	Else
		call condicaothree
	end if
end if

if nivelthree(n) = resp(i) Then
	acertos=acertos+1
	i=i+1
	select case acertos
			case 11:
					pontuacao=100000
			case 12:
					pontuacao=200000
			case 13:
					pontuacao=300000
			case 14:
					pontuacao=400000
			case 15:
					pontuacao=500000
	end select
	msgbox("Nome do jogador: "& name &"" + vbnewline &_
			"Nivel 3" + vbnewline &_
			"Palavras acertadas: "& acertos &"" + vbnewline &_
			"Pontuação: "& pontuacao &""), vbinformation+vbokonly, "LEVEL 3"
	call sorteiothree
Else
	if (UCase(resp(i)))<>(UCase("p")) and (UCase(resp(i)))<>(UCase("o")) then
		again=msgbox("Você errou e perdeu o game!! " + vbnewline &_
						"Deseja jogar novamente? ", vbExclamation + vbyesno, "PERDEEEEEEEEEEU")
		if again=vbyes Then
			call levelone
		Else
			wscript.quit
		end if
	end if  
end if
end sub

sub next_level
msgbox("Você conseguiu avançar para o próximo nivel!!!"), vbExclamation+vbokonly, "PARABÉNS"
end Sub

sub levelfour()
i = 0
pular = 0
ouvir = 0
nivelfour(1)="vicissitude"
nivelfour(2)="abdominoisterectômico"
nivelfour(3)="cóccix"
nivelfour(4)="senescência"
nivelfour(5)="meningocócito"
nivelfour(6)="assoreamento"
nivelfour(7)="parassimpaticomimético"
nivelfour(8)="traquelatloidoccipital"
nivelfour(9)="exórdio"
nivelfour(10)="meningocócito"
call sorteiofour
end sub

sub sorteiofour()
randomize(second(time))
	n=int(rnd*10)+1
call chamar_audiofour
call next_level
end sub

sub chamar_audiofour()
audio.speak("A palavra que deve ser escrita é "& nivelfour(n) &"")
call condicaofour
end Sub

sub condicaofour()
resp(i)=(inputbox("Nome do jogador: "& name &"" + vbnewline &_
					"[O] Ouvir a palavra novamente" + vbnewline &_
					"[P] Pular a palavra" + vbnewline &_
					"[E] Encerrar o jogo"))

if (UCase(resp(i))=(UCase("o"))) Then
	if ouvir=0 Then
		ouvir=ouvir+1
		call chamar_audiofour
	else 
		msgbox("O recurso de ouvir a palavra novamente já foi utilizada anteriormente"), vbinformation+vbokonly, "ATENÇÃO"
		call condicaofour
	end if
end if

if (UCase(resp(i))=(UCase("p"))) Then
	if pular=0 Then
		pular=pular+1
		call sorteiofour
	Else 
			msgbox("O recurso de pular a palavra já foi utilizada anteriormente"), vbinformation+vbokonly, "ATENÇÃO"
			call condicaofour
	end if
end if

if (UCase(resp(i))=(UCase("e"))) Then
	encerrar_jogo=msgbox("Tem certeza que deseja encerrar o jogo? ", vbQuestion+vbyesno, "ATENÇÃO")
	if encerrar_jogo=vbyes Then
		wscript.quit
	Else
		call condicaofour
	end if
end if

if nivelfour(n) = resp(i) Then
	acertos=acertos+1
	i=i+1
	select case acertos
			case 16:
					pontuacao=1000000
	end select
	msgbox("Nome do jogador: "& name &"" + vbnewline &_
			"Nivel 4" + vbnewline &_
			"Palavras acertadas: "& acertos &"" + vbnewline &_
			"Pontuação: "& pontuacao &""), vbinformation+vbokonly, "LEVEL 4"
	
	again=msgbox("PARABÉNSSSS, VOCÊ CONSEGUIU GANHAR O SOLETRANDO!!! " + vbnewline &_
				 "Deseja jogar novamente? ", vbQuestion + vbyesno, "GANHOOOOOOOU!!!")
	if again=vbyes Then
		call levelone
	Else
		wscript.quit
	end if
Else
	if (UCase(resp(i)))<>(UCase("p")) and (UCase(resp(i)))<>(UCase("o")) then
		again=msgbox("Você errou e perdeu o game!! " + vbnewline &_
						"Deseja jogar novamente? ", vbExclamation + vbyesno, "PERDEEEEEEEEEEU")
		if again=vbyes Then
			call levelone
		Else
			wscript.quit
		end if
	end if  
end if
end sub

sub next_level
msgbox("Você conseguiu avançar para o próximo nivel!!!"), vbExclamation+vbokonly, "PARABÉNS"
end Sub