:-dynamic vinho/9.
:-dynamic nome/2.
:-dynamic safra/2.
:-dynamic tipo/2.
:-dynamic uva/2.
:-dynamic teoralcolico/2.
:-dynamic idamadurecimento/2.
:-dynamic nota/2.
:-dynamic localizacao/3.
:-dynamic regiao/2.
:-dynamic pais/2.
:-dynamic caracteristicaPais/5.
:-dynamic sigla/2.
:-dynamic adjetivo/3.
:-dynamic clima/2.
:-dynamic caracteristicaVinho/7.
:-dynamic visual/2.
:-dynamic olfativo/3.
:-dynamic gustativo/4.
:-dynamic amadurecimento/3.
:-dynamic barril/2.
:-dynamic tempo/2.
:-dynamic combinacao/3.
:-dynamic origem/2.
:-dynamic harmonizacao/2.

%Vinho
vinho(cddrcs2011,'Casillero Del Diablo Reserva Cabernet Sauvignon',2011,'Tinto','Cabernet Sauvignon',13.5,carvalho8m,15,4).
vinho(sr2008,'Sabor Real',2008,'Tinto','Tempranillo',14.5,carvalho10m,15,3.5).
vinho(mpv2010,'Mil Piedras Viognier',2010,'Branco','Viognier',13.5,nao,8,4).

nome(Id,Nome) :- vinho(Id,Nome,_,_,_,_,_,_,_).
safra(Id,Safra) :- vinho(Id,_,Safra,_,_,_,_,_,_).
tipo(Id,Tipo) :- vinho(Id,_,_,Tipo,_,_,_,_,_).
uva(Id,Uva) :- vinho(Id,_,_,_,Uva,_,_,_,_).
teoralcoolico(Id,TeorAlcoolico) :- vinho(Id,_,_,_,_,TeorAlcoolico,_,_,_).
idAmadurecimento:- vinho(Id,_,_,_,_,_,Amadurecimento,_,_).
temperatura:- vinho(Id,_,_,_,_,_,_,Temperatura,_).
nota(Id,Nota):- vinho(Id,_,_,_,_,_,_,_,Nota).


%Localizacao
localizacao('Viña Concha Y Toro','Chile','Valle Central').
localizacao('Bodegas Campiña','Espanha','Toro').
localizacao('Benvenuto De La Serna','Argentina','M1endoza').

regiao(Vinicula,Regiao) :- localizacao(Vinicula,_,Regiao).
pais(Regiao,Pais) :- localizacao(_,Pais,Regiao).


%Caracteristica Pais
caracteristicaPais('Chile',cl, , ,frio).
caracteristicaPais('Espanha',es, , ,frio).
caracteristicaPais('Argentina',ar, , ,frio).

sigla('Chile',cl).
adjetivo('Chile', , ).
clima('Chile',frio).
sigla('Espanha',es).
adjetivo('Espanha', , ).
clima('Espanha', frio).
sigla('Argentina',ar).
adjetivo('Argentina', , ).
clima('Argentina', frio).


%Caracteristica Vinho
caracteristicaVinho('Rubi intenso','Frutas negras','Especiarias','Macio','Equilibrado','Frutado',cddrcs2011).
caracteristicaVinho('Rubi','Frutas negras secas','Especiarias','Encorpado','Intenso','Saboroso',sr2008).
caracteristicaVinho('Amarelo esverdeado','Frutas brancas','Frutas cítricas','Frutado','Equilibrado','Agradável',mpv2010).

visual(Id,Visual) :- caracteristicaVinho(Visual,_,_,_,_,_,Id).
olfativo(Id,Olfativo1,Olfativo2) :- caracteristicaVinho(_,Olfativo1,Olfativo2,_,_,_,Id).
gustativo(Id,Gustativo1,Gustativo2,Gustativo3) :- caracteristicaVinho(_,_,_,Gustativo1,Gustativo2,Gustativo3,Id).


%Amadurecimento
amadurecimento(carvalho8m,carvalho,'8 meses').
amadurecimento(carvalho10m,carvalho,'10 meses').
amadurecimento(nao,sem,'0').

barril(carvalho8m,carvalho).
tempo(carvalho8m,'8 meses').
barril(carvalho10m,carvalho).
tempo(carvalho10m,'10 meses').
barril(nao,sem).
tempo(nao,'0').


%Peixes,frutos do mar, ave, caça, carne vermelha, suína, prato, salada,sobremesa,massa,lanche
%Pratos
combinacao('Carne assada',' ','carne vermelha').
combinacao('Canelone queijo',' ','massa').
combinacao('Costela no bafo',' ','carne vermelha').
combinacao('Linguiça na brasa',' ','suína').
combinacao('Pizza de calabresa',' ','massa').
combinacao('Chuleta grelhada',' ','carne vermelha').
combinacao('Costela ensopada',' ','carne vermelha').
combinacao('Massa de funghi secchi',' ','massa').
combinacao('Raviole de rabada',' ','massa').
combinacao('Sanduiche',' ','lanche').
combinacao('Frango grelhado',' ','ave').
combinacao('Culinária Japonesa',' ','peixe').	
combinacao('Isca de Peixe',' ','peixe').
combinacao('Saladas',' ','salada').

prato(Prato,Tipo) :- combinacao(Prato,_,Tipo).

gordura('carne vermelha','gorduroso').
gordura('suína','gorduroso').
gordura('salada','light').
gordura('peixes','magro').
gordura('frutos do mar','magro').
gordura('ave','mediano').
gordura('caça','mediano').
gordura('sobremesa','mediano').
gordura('massa','mediano').
gordura('lanche','magro').

sabores('carne vermelha','com personalidade').
sabores('suína','com personalidade').
sabores('salada','leve').
sabores('peixes','mediana').
sabores('frutos do mar','muita personalidade').
sabores('ave','mediana').
sabores('caça','muita personalidade').
sabores('sobremesa','leve').
sabores('massa','muita personalidade').
sabores('lanche','leve').


%amiga(marta,maria).
%relacao(Nome,Amiga) :- amiga(Nome,Amiga),(No	me=joana;Nome=clara)).

%Relações entre os fatos
origem(cddrcs2011,'Chile').
origem(sr2008,'Espanha').
origem(mpv2010,'Argentina').

harmonizacao(cddrcs2011,'carne vermelha').
harmonizacao(cddrcs2011,'massa').
harmonizacao(sr2008,'carne vermelha').
harmonizacao(sr2008,'massa').
harmonizacao(mpv2010,'ave').
harmonizacao(mpv2010,'peixe').
harmonizacao(mpv2010,'salada').
harmonizacao(mpv2010,'lanche').


%Regras
gorduroso(X):-gordura(X,'gorduroso').
light(X):-gordura(X,'light').
magro(X):-gordura(X,'magro').
mediano(X):-gordura(X,'mediano').

muitapersonalidade(X):-sabores(X,'muita personalidade').
compersonalidade(X):-sabores(X,'com personalidade').
mediana(X):-sabores(X,'mediana').
leve(X):-sabores(X,'leve').

beberVinhoBranco(Vinho):- vinho(Id,Vinho,Safra,_,_,_,_,_,_),Resultado is (2014-Safra),(Resultado=<4),tipo(Id,'Branco').
beberVinhoBranco(Vinho):- nome(Id,Vinho), tipo(Id,'Tinto'), (combinacao(_,_,_,_,'peixe'); prato(_,'peixe')).
beberVinhoTinto(Vinho):- nome(Id,Vinho), tipo(Id,'Tinto'), (combinacao(_,_,_,_,'massa'); prato(_,'massa')).

procuraId(Vinho,Id):-nome(Id,Vinho).

pergunta1 :- 
		write('Qual a ocasião que mais te agrada no momento? '),
		read(Param1),nl,
		pergunta2(Param1).
pergunta2(Param1) :- 
		write('Qual desses lugares você gostaria de estar agora? '),
		read(Param2),nl,
		pergunta3(Param1,Param2).
pergunta3(Param1,Param2) :- 
		write('O que mais te chama atenção em um prato? '),
		read(Param3),nl,
		pergunta4(Param1,Param2,Param3).
pergunta4(Param1,Param2,Param3) :- 
		write('Como você prefere seu prato? '),
		read(Param4),nl,
		pergunta5(Param1,Param2,Param3,Param4).
pergunta5(Param1,Param2,Param3,Param4) :- 
		write('Qual estilo de prato mais te satisfaz? '),
		read(Param5),nl,
		pergunta6(Param1,Param2,Param3,Param4,Param5).
pergunta6(Param1,Param2,Param3,Param4,Param5) :- 
		write('Quais dos queijos você mais se identifica? '),
		read(Param6),nl,
		pergunta7(Param1,Param2,Param3,Param4,Param5,Param6).
pergunta7(Param1,Param2,Param3,Param4,Param5,Param6) :- 
		write('Que cor você prefere? '),
		read(Param7),nl,
		pergunta8(Param1,Param2,Param3,Param4,Param5,Param6,Param7).
pergunta8(Param1,Param2,Param3,Param4,Param5,Param6,Param7) :- 
		write('Quais dessas frutas mais te agrada? '),
		read(Param8),nl,
		pergunta9(Param1,Param2,Param3,Param4,Param5,Param6,Param7,Param8).
pergunta9(Param1,Param2,Param3,Param4,Param5,Param6,Param7,Param8) :- 
		write('Que outra bebida alcólica você consumiria? '),
		read(Param9),nl,
vinho(Param1,Param2,Param3,Param4,Param5,Param6,Param7,Param8,Param9).


pergunta :- write('Qual o id do vinho: '), read(Id), procuraId(Vinho,Id),nl,write('O vinho é: '),write(Vinho).
pergunta22 :- write('Qual o tipo do vinho: '), read(Tipo),vinho(Id,_,_,Tipo,_,_,_,_,_),nl,write('O id do vinho é: '),nl,write(Id),funcaoTeste(Id).
funcaoTeste(Id) :- nl,nome(Id,Nome),write('O nome é: '),write(Nome).

criaArquivo :- fcreate(arq,'/TrabTrabalhoProlog/saida.pl',2).

