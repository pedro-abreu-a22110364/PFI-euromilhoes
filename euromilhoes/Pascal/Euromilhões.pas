Program Euromilhoes;
Var
	num:array[1..5] of integer;
	est:array[1..2] of integer;
	sortenum:array[1..5] of integer;
	sorteest:array[1..2] of integer;
	numcertos,estcertos,menu,op:integer;
	
procedure menuinicial;
	Var i:integer;
		
	Begin
	
	 	gotoxy(1,1);
		Write (chr(201));		
		
		gotoxy(1,2);
		Write(chr(186));
		
		gotoxy(1,3);
		Write(chr(204));
		
		gotoxy(1,4);
		Write(chr(186));
		
		gotoxy(1,5);
		Write(chr(204));
		
		gotoxy(1,6);
		Write(chr(186));
		
		gotoxy(1,7);
		Write(chr(204));
		
		gotoxy(1,8);
		Write(chr(186));
		
		gotoxy(1,9);
		Write(chr(204));
		
		gotoxy(1,10);
		Write(chr(186));
		
		gotoxy(1,11);
		Write(chr(200));
		
		gotoxy(34,1);
		Write(chr(187));
		
		gotoxy(34,2);
		Write(chr(186));
		
		gotoxy(34,3);
		Write(chr(185));
		
		gotoxy(34,4);
		Write(chr(186));
		
		gotoxy(34,5);
		Write(chr(185));
		
		gotoxy(34,6);
		Write(chr(186));
		
		gotoxy(34,7);
		Write(chr(185));
		
		gotoxy(34,8);
		Write(chr(186));
		
		gotoxy(34,9);
		Write(chr(185));
		
		gotoxy(34,10);
		Write(chr(186));
		
		gotoxy(34,11);
		Write(chr(188));
		
		gotoxy(5,3);
		Write(chr(203));
				
		gotoxy(5,4);
		Write(chr(186));
		
		gotoxy(5,5);
		Write(chr(206));
		
		gotoxy(5,6);
		Write(chr(186));
		
		gotoxy(5,7);
		Write(chr(206));
		
		gotoxy(5,8);
		Write(chr(186));
		
		gotoxy(5,9);
		Write(chr(202));
		
		For i:=2 to 4 do
			Begin
				gotoxy(i,3);
				Write(chr(205));
			End;
		
		For i:=2 to 4 do
			Begin
				gotoxy(i,5);
				Write(chr(205));
			End;
		
		For i:=2 to 4 do
			Begin
				gotoxy(i,7);
				Write(chr(205));
			End;
			
		For i:=2 to 4 do
			Begin
				gotoxy(i,9);
				Write(chr(205));
			End;
					
		For i:=2 to 33 do
			Begin
				gotoxy(i,1);
				Write(chr(205));
			End;
		
		For i:=2 to 33 do
			Begin
				gotoxy(i,11);
				Write(chr(205));
			End;
		
		For i:=6 to 33 do
			Begin
				gotoxy(i,3);
				Write(chr(205));
			End;
			
		For i:=6 to 33 do
			Begin
				gotoxy(i,5);
				Write(chr(205));
			End;
			
		For i:=6 to 33 do
			Begin
				gotoxy(i,7);
				Write(chr(205));
			End;
			
		For i:=6 to 33 do
			Begin
				gotoxy(i,9);
				Write(chr(205));
			End;	
		
		gotoxy(3,2);
		Writeln('Seja bem vindo ao euromilhões!');
		
		gotoxy(4,10);
		Writeln('Pressione o número da opção');
		
		gotoxy(13,4);
		Writeln('Chave manual');
		
		gotoxy(11,6);
		Writeln('Chave automática');
		
		gotoxy(17,8);
		Writeln('Sair');
		
		gotoxy(3,4);
		Writeln('1');
		
		gotoxy(3,6);
		Writeln('2');
		
		gotoxy(3,8);
		Writeln('3');
		
		gotoxy(1,12);
		Readln(menu);
		 
	End;
		
procedure numeros;  
	Var i,j:integer;
	
	Begin
	  For i:=1 to 5 do num[i]:=0;
			For i:= 1 to 5 do 
				Begin
					While (num[i]=0) do
					Begin
						Write('Digite o ',i,'º numero ');
						Readln(num[i]);
  					While (num[i]<1) or (num[i]>50) do
	  				Begin
		  				Writeln ('Número inválido, digite um número de 1 a 50!');
		  				Readln(num[i]);
		  			End;
		  		End;
		  		For j:=1 to (i-1) do 
      		Begin
      	  	If (num[j]=num[i]) then
						Begin
			  			num[i]:=0;              
     		  	  Writeln('Não pode repetir números!');
     		  	  Readln(num[i]);
     				End;
    			End;            
				End;
	End;
	
procedure ordenarnum;
Var i,j,tmp:integer;

	Begin
		For i:=1 to 4 do
			For j:=i+1 to 5 do 
				If (num[i]>num[j]) then             
					Begin
						tmp:=num[i];
						num[i]:=num[j];
						num[j]:=tmp;
					End;
	End;

procedure writenum;
Var i:integer;

	Begin
		Writeln('Números:');
		For i:=1 to 5 do
			Begin
				Writeln(num[i]);
			End;
	End;
		
procedure estrelas;
	Var i,j:integer;
	
	Begin
	  For i:=1 to 2 do est[i]:=0;
			For i:= 1 to 2 do 
				Begin
					While (est[i]=0) do
					Begin
						Write('Digite a ',i,'º estrela ');
						Readln(est[i]);         
  					While (est[i]<1) or (est[i]>12) do
	  				Begin
		  				Writeln ('Número inválido, digite uma estrela de 1 a 12!');
		  				Readln(est[i]);
		  			End;
		  		End;
		  		For j:=1 to (i-1) do 
      		Begin
      	  	If (est[j]=est[i]) then
						Begin
			  			est[i]:=0;              
     		  	  Writeln('Não pode repetir estrelas!');
     		  	  Readln(est[i]);
     				End;
    			End;
				End;
	End;
	
procedure ordenarest;
Var i,j,tmp:integer;

	Begin
		For i:=1 to 1 do
			For j:=i+1 to 2 do 
				If (est[i]>est[j]) then
					Begin
						tmp:=est[i];
						est[i]:=est[j];
						est[j]:=tmp;       
					End;
	End;

procedure writeest;
Var i:integer;
	
	Begin
		Writeln('Estrelas:');
		For i:=1 to 2 do
			Begin				
				Writeln(est[i]);
			End;
	End;
	
procedure numauto;

Var i,j:integer;

	Begin
	For i:=1 to 5 do num[i]:=0;
		For i:=1 to 5 do
		Begin
			While (num[i]=0) do
			Begin
				num[i]:=random(50)+1;
				For j:=1 to (i-1) do
      		Begin
      			If (num[j]=num[i]) then	num[i]:=0;
    			End;
			End;
		End;
	End;

procedure ordenarautonum;
Var i,j,tmp:integer;

	Begin
		For i:=1 to 4 do
			For j:=i+1 to 5 do 
				If (num[i]>num[j]) then
					Begin
						tmp:=num[i];
						num[i]:=num[j];
						num[j]:=tmp;
					End;
	End;

procedure writeautonum;
Var i:integer;
	
	Begin
		Writeln('Números:');
		For i:=1 to 5 do
			Begin
				Writeln(num[i]);
			End;
	End;

procedure estauto;
Var i,j:integer;

	Begin
	For i:=1 to 2 do est[i]:=0;
		For i:=1 to 2 do
		Begin
			While (est[i]=0) do
			Begin 
				est[i]:=random(12)+1;
  			For j:=1 to (i-1) do 
      		Begin
      			If (est[j]=est[i]) then est[i]:=0;
    			End;
			End;            	
    End;
	End;
	
procedure ordenarautoest;
Var i,j,tmp:integer;

	Begin
		For i:=1 to 1 do
			For j:=i+1 to 2 do 
				If (est[i]>est[j]) then
					Begin
						tmp:=est[i];
						est[i]:=est[j];
						est[j]:=tmp;
					End;
	End;
	
procedure writeautoest;
Var i:integer;

	Begin
		Writeln('Estrelas:');
		For i:=1 to 2 do
			Begin				
				Writeln(est[i]);
			End;
	End;
	
procedure numrandom;
Var i,j:integer;

	Begin
	For i:=1 to 5 do sortenum[i]:=0;
		For i:=1 to 5 do
		Begin
			While (sortenum[i]=0) do
			Begin
				sortenum[i]:=random(50)+1;
				For j:=1 to (i-1) do 
      		Begin
      			If (sortenum[j]=sortenum[i]) then sortenum[i]:=0;
    			End;
    	End;
		End;            	
	End;
	
procedure ordenarsortenum;
Var i,j,tmp:integer;

	Begin
		For i:=1 to 4 do
			For j:=i+1 to 5 do 
				If (sortenum[i]>sortenum[j]) then
					Begin
						tmp:=sortenum[i];
						sortenum[i]:=sortenum[j];
						sortenum[j]:=tmp;
					End;
	End;

procedure writesortenum;
Var i:integer;
	
	Begin
		Writeln('Números sorteados:');
		For i:=1 to 5 do
			Begin
				Writeln(sortenum[i]);
			End;
	End;
		
procedure estrandom;
Var i,j:integer;

	Begin
	For i:=1 to 2 do sorteest[i]:=0;
		For i:=1 to 2 do
		Begin
			While (sorteest[i]=0) do
			Begin 
				sorteest[i]:=random(12)+1;
  			For j:=1 to (i-1) do 
      		Begin
      			If (sorteest[j]=sorteest[i]) then sorteest[i]:=0;
    			End;
			End;            	
    End;
	End;
	
procedure ordenarsorteest;
Var i,j,tmp:integer;

	Begin
		For i:=1 to 1 do
			For j:=i+1 to 2 do 
				If (sorteest[i]>sorteest[j]) then
					Begin
						tmp:=sorteest[i];
						sorteest[i]:=sorteest[j];
						sorteest[j]:=tmp;
					End;
	End;
	
procedure writesorteest;
Var i:integer;

	Begin
		Writeln('Estrelas sorteadas:');
		For i:=1 to 2 do
			Begin				
				Writeln(sorteest[i]);
			End;
	End;
	
procedure compararnum;
Var i,j:integer;

	Begin
		numcertos:=0;
		For i:=1 to 5 do
  		For j:= 1 to 5 do
  		begin
    		If (num[i]=sortenum[j])then numcertos:=numcertos+1;	        		
    	end;
	End;	

procedure compararest;
Var i,j:integer;

	Begin
		estcertos:=0;
		For i:=1 to 2 do
  		For j:= 1 to 2 do
  		begin
    		If (est[i]=sorteest[j]) then estcertos:=estcertos+1;  	
    	end;
	   Writeln('Acertaste ',numcertos,' números e ',estcertos,' estrelas');
	End;

procedure premio;
Var valorp,pr:real;

	Begin
		valorp:=50000000;
		
		If ((numcertos=0) and (estcertos=0)) or ((numcertos=0) and (estcertos=1)) or ((numcertos=1) and (estcertos=1)) or ((numcertos=1) and (estcertos=0)) or ((numcertos=0) and (estcertos=2))then
			Writeln('Tiveste azar não ganhaste nada!');
			
		If (numcertos=1) and (estcertos=2) then
			Begin
				pr:=valorp*(0.00000016);
				Writeln('Parabéns ganhaste ',pr:0:2,' euros !');			 
			End;
			
		If (numcertos=2) and (estcertos=0) then
			Begin
				pr:=valorp*(0.00000008);
				Writeln('Parabéns ganhaste ',pr:0:2,' euros !');			 
			End;
			
		If (numcertos=2) and (estcertos=1) then
			Begin
				pr:=valorp*(0.0000001);
				Writeln('Parabéns ganhaste ',pr:0:2,' euros !');			 
			End;
			
		If (numcertos=2) and (estcertos=2) then
			Begin
				pr:=valorp*(0.00000033);
				Writeln('Parabéns ganhaste ',pr:0:2,' euros !');			 
			End;
			
		If (numcertos=3) and (estcertos=0) then
			Begin
				pr:=valorp*(0.0000002);
				Writeln('Parabéns ganhaste ',pr:0:2,' euros !');			 
			End;
			
		If (numcertos=3) and (estcertos=1) then
			Begin
				pr:=valorp*(0.00000025);
				Writeln('Parabéns ganhaste ',pr:0:2,' euros !');			 
			End;
			
		If (numcertos=3) and (estcertos=2) then
			Begin
				pr:=valorp*(0.0000015);
				Writeln('Parabéns ganhaste ',pr:0:2,' euros !');			 
			End;
			
		If (numcertos=4) and (estcertos=0) then
			Begin
				pr:=valorp*(0.00000095);
				Writeln('Parabéns ganhaste ',pr:0:2,' euros !');			 
			End;
			
		If (numcertos=4) and (estcertos=1) then
			Begin
				pr:=valorp*(0.0000026);
				Writeln('Parabéns ganhaste ',pr:0:2,' euros !');			 
			End;
			
		If (numcertos=4) and (estcertos=2) then
			Begin
				pr:=valorp*(0.000025);
				Writeln('Parabéns ganhaste ',pr:0:2,' euros !');			 
			End;
			
		If (numcertos=5) and (estcertos=0) then
			Begin
				pr:=valorp*(0.00055);
				Writeln('Parabéns ganhaste ',pr:0:2,' euros !');			 
			End;
			
		If (numcertos=5) and (estcertos=1) then
			Begin
				pr:=valorp*(0.0071);
				Writeln('Parabéns ganhaste ',pr:0:2,' euros !');			 
			End;
			
		If (numcertos=5) and (estcertos=2) then
				Writeln('Parabéns ganhaste ',valorp:0:2,' euros !');			 
			
	End;
	
procedure deseja;

	Begin
		Writeln('Deseja apostar novamente?');
		Writeln('1 - Sim');
		Writeln('2 - Não');
		Writeln(' ');
		Writeln('Pressione o número da opção que deseja');
		Readln(op);
	End;

procedure sair;

	Begin
		Readln();
	End;
				
Begin

	textcolor(0);
	textbackground(15);
	clrscr;
  Repeat
	menuinicial;
	clrscr; 
	If (menu=1) then
		Begin
			numeros;
			estrelas;
			clrscr;
			ordenarnum;
			writenum;
			ordenarest;
			writeest;
		End;
	If (menu=2) then
		Begin
			numauto;
			ordenarautonum;
			writeautonum;
			estauto;
			ordenarautoest;
			writeautoest;
		End;
	If (menu=1) or (menu=2) then
		Begin
			readln();
			clrscr;
			numrandom;
			ordenarsortenum;
			writesortenum;
			estrandom;
			ordenarsorteest;
			writesorteest;
			readln();
			compararnum;
			compararest;
			readln();
			clrscr;
			premio;
			readln(); 
			clrscr;
			deseja;
			clrscr;
			If (op=2) then
				sair;
		End;
	Until (op=2) or (menu=3);
	If (menu=3) then
			sair;
	
End.                          