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
:-dynamic combinacao/5.
:-dynamic origem/2.
:-dynamic harmonizacao/2.

%Vinho
vinho(cddrcs2011,'Casillero Del Diablo Reserva Cabernet Sauvignon',2011,'Tinto','Cabernet Sauvignon',13.5,carvalho8m,15,4).
vinho(sr2008,'Sabor Real',2008,'Tinto','Tempranillo',14.5,carvalho10m,15,3.5).
vinho(mpv2010,'Mil Piedras Viognier',2010,'Branco','Viognier',13.5,nao,8,4).

nome(cddrcs2011,'Casillero Del Diablo Reserva Cabernet Sauvignon').
safra(cddrcs2011,2011).
tipo(cddrcs2011,'Tinto').
uva(cddrcs2011,'Cabernet Sauvignon').
teoralcolico(cddrcs2011,13.5).
idamadurecimento(cddrcs2011,carvalho8m).
temperatura(cddrcs2011,15).
nota(cddrcs2011,4).
nome(sr2008,'Sabor Real').
safra(sr2008,2008).
tipo(sr2008,'Tinto').
uva(sr2008,'Tempranillo').
teoralcolico(sr2008,14.5).
idamadurecimento(sr2008,carvalho10m).
temperatura(sr2008,15).
nota(sr2008,3.5).
nome(mpv2010,'Mil Piedras Viognier').
safra(mpv2010,2010).
tipo(mpv2010,'Branco').
uva(mpv2010,'Viognier').
teoralcolico(mpv2010,13.5).
idamadurecimento(mpv2010,nao).
temperatura(mpv2010,8).
nota(mpv2010,4).


%Localizacao
localizacao('Viña Concha Y Toro','Chile','Valle Central').
localizacao('Bodegas Campiña','Espanha','Toro').
localizacao('Benvenuto De La Serna','Argentina','Mendoza').

regiao('Viña Concha Y Toro','Valle Central').
pais('Viña Concha Y Toro','Chile').
regiao('Bodegas Campiña','Toro').
pais('Bodegas Campiña','Espanha').
regiao('Benvenuto De La Serna','Mendoza').
pais('Benvenuto De La Serna','Argentina').


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

visual(cddrcs2011,'Rubi intenso').
olfativo(cddrcs2011,'Frutas negras','Especiarias').
gustativo(cddrcs2011,'Macio','Equilibrado','Frutado').
visual(sr2008,'Rubi').
olfativo(sr2008,'Frutas negras','Especiarias').
gustativo(sr2008,'Macio','Equilibrado','Frutado').
visual(mpv2010,'Amarelo esverdeado').
olfativo(mpv2010,'Frutas brancas','Frutas cítricas').
gustativo(mpv2010,'Frutado','Equilibrado','Agradável').


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
combinacao('Carne assada',' ',' ',' ','carne vermelha').
combinacao('Canelone queijo',' ',' ',' ','massa').
combinacao('Costela no bafo',' ',' ',' ','carne vermelha').
combinacao('Linguiça na brasa',' ',' ',' ','suína').
combinacao('Pizza de calabresa',' ',' ',' ','massa').
combinacao('Chuleta grelhada',' ',' ',' ','carne vermelha').
combinacao('Costela ensopada',' ',' ',' ','carne vermelha').
combinacao('Massa de funghi secchi',' ',' ',' ','massa').
combinacao('Raviole de rabada',' ',' ',' ','massa').
combinacao('Sanduiche',' ',' ',' ','lanche').
combinacao('Frango grelhado',' ',' ',' ','ave').
combinacao('Culinária Japonesa',' ',' ',' ','peixe').
combinacao('Isca de Peixe',' ',' ',' ','peixe').
combinacao('Saladas',' ',' ',' ','salada').

prato('Carne assada','carne vermelha').
prato('Canelone queijo','massa').
prato('Costela no bafo','carne vermelha').
prato('Linguiça na brasa','suína').
prato('Pizza de calabresa','massa').
prato('Chuleta grelhada','carne vermelha').
prato('Costela ensopada','carne vermelha').
prato('Massa de funghi secchi','massa').
prato('Raviole de rabada','massa').
prato('Sanduiche','lanche').
prato('Frango grelhado','ave').
prato('Culinária Japonesa','peixe').
prato('Isca de Peixe','peixe').
prato('Saladas','salada').

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

