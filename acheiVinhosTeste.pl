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
:-dynamic pontuacao/2.

%Vinho
vinho(cddrcs2011,'Casillero Del Diablo Reserva Cabernet Sauvignon',2011,'Tinto','Cabernet Sauvignon',13.5,carvalho8m,15,4).
vinho(sr2008,'Sabor Real',2008,'Tinto','Tempranillo',14.5,carvalho10m,15,3.5).
vinho(mpv2010,'Mil Piedras Viognier',2010,'Branco','Viognier',13.5,nao,8,4).
vinho(mps2009,'Mil Piedras Sangiovese',2009,'Tinto','Sangiovese',13.5,sim,15,4).
vinho(asb2011,'Aylin Sauvignon Blanc',2011,'Branco','Sauvignon Blanc',14,nao,8,4).
vinho(fdldn2011,'Fratelli Dogliani Langhe DOC Nebbiolo',2011,'Tinto','Nebbiolo',14,carvalho6m,15,3).
vinho(fdddd2011,'Fratelli Dogliani Dolcetto D´Alba DOC',2011,'Tinto','Dolcetto',12.5,nao,15,3).
vinho(hnhs2011,'Hardys Nottage Hill Shiraz',2011,'Tinto','Shiraz',13.5,nao,15,1).
vinho(sd2008,'Salton Desejo',2008,'Tinto','Merlot',13,carvalho12m,15,4).
vinho(bprcpn2012,'Baron Philippe de Rothschild Cadet d´Oc Pinot Noir',2012,'Tinto','Pinot noir ',13,nao,15,2).
vinho(tm2012,'Tamarí Malbec',2012,'Tinto','Malbec',13,nao,15,3.5).
vinho(cdtrm2011,'Casas del Toqui Reserva Merlot',2011,'Tinto','Merlot',13.5,carvalho8m,15,3).
vinho(fbtgcs2011,'Fantinel Borgo Tesis DOC Grave Cabernet Sauvignon',2011,'Tinto','Cabernet Sauvignon',12.5,carvalho9m,16,3).
vinho(ctrsb2012,'Casas del Toqui Reserva Sauvignon Blanc',2012,'Branco','Sauvignon Blanc',13,nao,10,4).
vinho(vmt2010,'Vega Moragona Tempranillo',2010,'Tinto','Sauvignon Blanc',14.5,sim,15,3).
vinho(fv2011,'Falernia Viognier',2011,'Branco','Viognier',13,nao,18,1).
vinho(fdm2011,'Finca La Daniela Malbec',2011,'Tinto','Malbec',13.6,nao,15,3).
vinho(paa2014,'Prosecco Anella Andreani',2014,'Espumante','Glera',11,nao,7,4).
vinho(ce2010,'Cabriz Encruzado',2010,'Branco','Encruzado',13.5,nao,8,3).
vinho(cpn2011,'Clava Pinot Noir',2011,'Branco','Pinot Noi',14.3,nao,15,4).
vinho(jrb2011,'Julian Reynolds Branco',2011,'Branco','Arinto',14,nao,8,3.5).

nome(Id,Nome) :- vinho(Id,Nome,_,_,_,_,_,_,_).
safra(Id,Safra) :- vinho(Id,_,Safra,_,_,_,_,_,_).
tipo(Id,Tipo) :- vinho(Id,_,_,Tipo,_,_,_,_,_).
uva(Id,Uva) :- vinho(Id,_,_,_,Uva,_,_,_,_).
teoralcoolico(Id,TeorAlcoolico) :- vinho(Id,_,_,_,_,TeorAlcoolico,_,_,_).
idAmadurecimento(Id,Amadurecimento) :- vinho(Id,_,_,_,_,_,Amadurecimento,_,_).
temperatura(Id,Temperatura):- vinho(Id,_,_,_,_,_,_,Temperatura,_).
nota(Id,Nota):- vinho(Id,_,_,_,_,_,_,_,Nota).

pontuacao(cddrcs2011,0).
pontuacao(sr2008,0).
pontuacao(mpv2010,0).
pontuacao(mps2009,0).
pontuacao(asb2011,0).
pontuacao(fdldn2011,0).
pontuacao(fdddd2011,0).
pontuacao(hnhs2011,0).
pontuacao(sd2008,0).
pontuacao(bprcpn2012,0).
pontuacao(tm2012,0).
pontuacao(cdtrm2011,0).
pontuacao(fbtgcs2011,0).
pontuacao(ctrsb2012,0).
pontuacao(vmt2010,0).
pontuacao(fv2011,0).
pontuacao(fdm2011,0).
pontuacao(paa2014,0).
pontuacao(ce2010,0).
pontuacao(cpn2011,0).
pontuacao(jrb2011,0).

%Localizacao
localizacao('Viña Concha Y Toro','Chile','Valle Central').
localizacao('Bodegas Campiña','Espanha','Toro').
localizacao('Benvenuto De La Serna','Argentina','Mendoza').
localizacao('Agrícola La Viña','Chile','Valle de San Antonio').
localizacao('Batasiolo','Itália','Piemonte').
localizacao('Hardys','Austrália','South Eastern').
localizacao('Vinícola Salton','Brasil','Bento Gonçalves').
localizacao('Baron Philippe de Rothschild','França','Languedoc').
localizacao('Bodega Tamarí','Argentina','Mendoza').
localizacao('Casas del Toqui','Chile','Valle del Cachapoal').
localizacao('Fantinel','Itália','Friuli').
localizacao('Casas del Toqui','Chile','Valle del Casablanca').
localizacao('La Magdalena','Espanha','Ribeira del Júcar').
localizacao('Viña Falernia','Chile','Valle del Elqui').
localizacao('Bodega Barberis','Argentina','Luján de Cuyo').
localizacao('Anella Andreani','Itália','Veneto').
localizacao('Quinta do Cabriz','Portugal','Dão').
localizacao('Viña Quintay','Chile','Valle de Casablanca').
localizacao('Reynolds','Portugal','Alentejo').

regiao(Vinicula,Regiao) :- localizacao(Vinicula,_,Regiao).
pais(Regiao,Pais) :- localizacao(_,Pais,Regiao).


%Caracteristica Pais
caracteristicaPais('Chile',cl, , ,frio).
caracteristicaPais('Espanha',es, , ,frio).
caracteristicaPais('Argentina',ar, , ,frio).
caracteristicaPais('Itália',it, , ,frio).
caracteristicaPais('Austrália',au, , ,quente).
caracteristicaPais('Brasil',br, , ,quente).
caracteristicaPais('França',fr, , ,frio).
caracteristicaPais('Portugal',pr, , ,frio).

sigla('Chile',cl).
adjetivo('Chile', , ).
clima('Chile',frio).
sigla('Espanha',es).
adjetivo('Espanha', , ).
clima('Espanha', frio).
sigla('Argentina',ar).
adjetivo('Argentina', , ).
clima('Argentina', frio).
adjetivo('Itália', , ).
clima('Itália', frio).
adjetivo('Austrália', , ).
clima('Austrália', quente).
adjetivo('Brasil', , ).
clima('Brasil', quente).
adjetivo('França', , ).
clima('França', frio).
adjetivo('Portugal', , ).
clima('Portugal', frio).

%Caracteristica Vinho Rubi,Amarelo,Palha, Vermelho Violeta, Cereja
caracteristicaVinho('Rubi','Frutas negras','Especiarias','Macio','Equilibrado','Frutado',cddrcs2011).
caracteristicaVinho('Rubi','Frutas negras secas','Especiarias','Encorpado','Intenso','Saboroso',sr2008).
caracteristicaVinho('Amarelo','Frutas brancas','Frutas cítricas','Frutado','Equilibrado','Agradável',mpv2010).
caracteristicaVinho('Rubi','Frutas vermelhas','Folhas secas','Frutado','Equilibrado','Agradável',mps2009).
caracteristicaVinho('Palha','Frutas tropicais','herbáceas','Corpo médio','Equilibrado','Agradável',asb2011).
caracteristicaVinho('Vermelho','Frutas vermelhas','violetas','Frutado','Taninos macios','Delicado',fdldn2011).
caracteristicaVinho('Rubi','Frutas vermelhas','cerejas ','Frutado','Equilibrado','bom corpo',fdddd2011).
caracteristicaVinho('Vermelho','Amora','pimenta preta','Macio','Denso','Tostado',hnhs2011).
caracteristicaVinho('Violeta','Frutas negras','baunilha','Frutado','Aporte de madeira','Chocolate',sd2008).
caracteristicaVinho('Cereja','Frutas negras','baunilha','Frutado','Elegante','Leve',bprcpn2012).
caracteristicaVinho('Rubi','Frutas vermelhas','Framboesa','Frutado','Estruturado','Equilibrado',tm2012).
caracteristicaVinho('Rubi','Frutas negras','Cacau','Elegante','Baunilha','Equilibrado',cdtrm2011).
caracteristicaVinho('Rubi','Cereja','ameixa','Encorpado','Aveludado','Final persistente',fbtgcs2011).
caracteristicaVinho('Amarelo','Frutas tropicais','Grama cortada','Equilibrado','Fresco','Final persistente',ctrsb2012).
caracteristicaVinho('Rubi','Frutas vermelhas','Notas de Especiarias','Frutas vermelhas','Mineralidade','Final persistente',vmt2010).
caracteristicaVinho('Palha','Frutas tropicais','Damasco','Complexo','Equilibrado','Corpo medio',fv2011).
caracteristicaVinho('Rubi','Frutas vermelhas','Framboesa','Frutado','Equilibrado','Taninos maduros',fdm2011).
caracteristicaVinho('Amarelo','Lima','Maçã verde','Refrescante','Volumoso','Taninos maduros',paa2014).
caracteristicaVinho('Amarelo','Frutas citricas','Flores','Leve','Elegante','Delicado',ce2010).
caracteristicaVinho('Rubi','Frutas vermelhas','Ervas finas','Frutado','Macio','Final agradavel',cpn2011).
caracteristicaVinho('Palha','Frutos tropicais','Maracujá','Rico em frutas','Elegante','Refrescante',jrb2011).

visual(Id,Visual) :- caracteristicaVinho(Visual,_,_,_,_,_,Id).
olfativo(Id,Olfativo1,Olfativo2) :- caracteristicaVinho(_,Olfativo1,Olfativo2,_,_,_,Id).
gustativo(Id,Gustativo1,Gustativo2,Gustativo3) :- caracteristicaVinho(_,_,_,Gustativo1,Gustativo2,Gustativo3,Id).


%Amadurecimento
amadurecimento(carvalho8m,carvalho,'8 meses').
amadurecimento(carvalho9m,carvalho,'9 meses').
amadurecimento(carvalho10m,carvalho,'10 meses').
amadurecimento(carvalho6m,carvalho,'6 meses').
amadurecimento(carvalho12m,carvalho,'12 meses').
amadurecimento(nao,sem,'0').
amadurecimento(sim,carvalho,'0').

barril(carvalho8m,carvalho).
tempo(carvalho8m,'8 meses').
barril(carvalho9m,carvalho).
tempo(carvalho9m,'9 meses').
barril(carvalho10m,carvalho).
tempo(carvalho10m,'10 meses').
barril(carvalho12m,carvalho).
tempo(carvalho12m,'12 meses').
barril(nao,sem).
tempo(nao,'0').
barril(sim,carvalho).
tempo(sim,'0').

%Peixes,frutos do mar, ave, caça, carne vermelha, suína, prato, salada,sobremesa,massa,	
%Pratos
combinacao('Carne assada','carne vermelha').
combinacao('Canelone queijo','massa').
combinacao('Costela no bafo','carne vermelha').
combinacao('Linguiça na brasa','suína').
combinacao('Pizza de calabresa','massa').
combinacao('Chuleta grelhada','carne vermelha').
combinacao('Costela ensopada','carne vermelha').
combinacao('Massa de funghi secchi','massa').
combinacao('Raviole de rabada','massa').
combinacao('Sanduiche','lanche').
combinacao('Frango grelhado','ave').
combinacao('Culinária Japonesa','peixe').	
combinacao('Isca de Peixe','peixe').
combinacao('Saladas','salada').
combinacao('Parmegiana','ave').
combinacao('Salada','salada').
combinacao('Pernil','suína').
combinacao('Peito de frango','ave').
combinacao('Abobrinha recheada','salada').
combinacao('Lombo suíno','suína').
combinacao('Galinhada','ave').
combinacao('Legumes assados','salada').
combinacao('Rosbife','carne vermelha').
combinacao('Paleta suína','suína').
combinacao('Espaguete','massa').
combinacao('Alcatra assada','carne vermelha').
combinacao('Queijos maduros','lanche').
combinacao('Atum gralhado','peixe').
combinacao('Costelinha suína ','suína').
combinacao('Maminha na brasa ','carne vermelha').
combinacao('Lasanha gratinada ','massa').
combinacao('Filé mignon','carne vermelha').
combinacao('Pernil assado','suína').
combinacao('Pizza de presunto','massa').
combinacao('Tomate recheado','salada').
combinacao('Maminha churrasqueada','carne vermelha').
combinacao('Lombo com bacon','carne vermelha').
combinacao('Paella','fruntos do mar').
combinacao('Salmao assado','fruntos do mar').
combinacao('Bobó de camarão','fruntos do mar').
combinacao('Salada grega','salada').
combinacao('Risoto','massa').
combinacao('Costelinha de porco','suína').
combinacao('Queijos','salada').
combinacao('Peixe assado','frutos do mar').
combinacao('Saladas leves','salada').
combinacao('Torta de palmito','massa').
combinacao('Panqueca de carne','massa').
combinacao('Batata','salada').
combinacao('Bacon','carne vermelha').
combinacao('Aves assadas','ave').
combinacao('Bacon','carne vermelha').
combinacao('Frutos do mar','frutos do mar').
combinacao('Saladas','salada').
combinacao('Frutos do mar','frutos do mar').
combinacao('Queijos leves','lanche').
combinacao('Talharim','massa').
combinacao('Risoto','massa').
combinacao('Marisco','frutos do mar').
combinacao('Peixe','frutos do mar').

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


%Relações entre os fatos
origem(cddrcs2011,'Chile').
origem(sr2008,'Espanha').
origem(mpv2010,'Argentina').
origem(mps2009,'Argentina').
origem(asb2011,'Chile').
origem(fdldn2011,'Itália').
origem(fdddd2011,'Itália').
origem(hnhs2011,'Austrália').
origem(sd2008,'Brasil').
origem(bprcpn2012,'França').
origem(tm2012,'Argentina').
origem(cdtrm2011,'Argentina').
origem(fbtgcs2011,'Chile').
origem(ctrsb2012,'Chile').
origem(vmt2010,'Espanha').
origem(fv2010,'Espanha').
origem(fdm2011,'Argentina').
origem(paa2014,'Itália').
origem(ce2010,'Portugal').
origem(cpn2011,'Chile').
origem(jrb2011,'Portugal').

harmonizacao(cddrcs2011,'carne vermelha').
harmonizacao(cddrcs2011,'massa').
harmonizacao(sr2008,'carne vermelha').
harmonizacao(sr2008,'massa').
harmonizacao(mpv2010,'ave').
harmonizacao(mpv2010,'peixe').
harmonizacao(mpv2010,'salada').
harmonizacao(mpv2010,'lanche').
harmonizacao(mps2009,'ave').
harmonizacao(asb2011,'salada').
harmonizacao(fdldn2011,'suína').
harmonizacao(fdldn2011,'ave').
harmonizacao(fdddd2011,'salada').
harmonizacao(fdddd2011,'suína').
harmonizacao(fdddd2011,'ave').
harmonizacao(hnhs2011,'salada').
harmonizacao(hnhs2011,'carne vermelha').
harmonizacao(hnhs2011,'suína').
harmonizacao(sd2008,'massa').
harmonizacao(sd2008,'carne vermelha').
harmonizacao(sd2008,'lanche').
harmonizacao(bprcpn2012,'peixe').
harmonizacao(bprcpn2012,'suína').
harmonizacao(tm2012,'carne vermelha').
harmonizacao(tm2012,'massa').
harmonizacao(tm2012,'carne vermelha').
harmonizacao(cdtrm2011,'suína').
harmonizacao(cdtrm2011,'massa').
harmonizacao(cdtrm2011,'salada').
harmonizacao(fbtgcs2011,'carne vermelha').
harmonizacao(fbtgcs2011,'carne vermelha').
harmonizacao(fbtgcs2011,'frutos do mar').
harmonizacao(ctrsb2012,'frutos do mar').
harmonizacao(ctrsb2012,'frutos do mar').
harmonizacao(ctrsb2012,'salada').
harmonizacao(vmt2012,'massa').
harmonizacao(vmt2012,'suína').
harmonizacao(vmt2012,'salada').
harmonizacao(fv2012,'frutos do mar').
harmonizacao(fv2012,'salada').
harmonizacao(fv2012,'massa').
harmonizacao(fdm2011,'massa').
harmonizacao(fdm2011,'salada').
harmonizacao(fdm2011,'carne vermelha').
harmonizacao(paa2014,'carne vermelha').
harmonizacao(paa2014,'frutos do mar').
harmonizacao(paa2014,'salada').
harmonizacao(ce2010,'frutos do mar').
harmonizacao(ce2010,'lanche').
harmonizacao(cpn2011,'massa').
harmonizacao(cpn2011,'massa').
harmonizacao(jrb2011,'frutos do mar').
harmonizacao(jrb2011,'frutos do mar').

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
beberVinhoBranco(Vinho):- nome(Id,Vinho), tipo(Id,'Branco'), combinacao(_,'peixe').
beberVinhoTinto(Vinho):- nome(Id,Vinho), tipo(Id,'Tinto'), combinacao(_,'massa').

momento('Coqueteis', TipoPrato) :- (TipoPrato='lanche'; TipoPrato='frutos do mar').
momento('HH',TipoPrato) :- (TipoPrato='lanche'; TipoPrato='frutos do mar').
momento('Piscina',TipoPrato) :- (TipoPrato='lanche'; TipoPrato='carne vermelha'; TipoPrato='ave'; TipoPrato='sobremesa').
momento('Churrasco',TipoPrato) :- (TipoPrato='lanche'; TipoPrato='carne vermelha'; TipoPrato='ave'; TipoPrato='sobremesa').
momento('Almoço',TipoPrato) :- gordura(TipoPrato,_).
momento('Jantar',TipoPrato) :- gordura(TipoPrato,_).
momento('Festa',TipoPrato) :- (TipoPrato='lanche';TipoPrato='carne vermelha';TipoPrato='ave';TipoPrato='massa').
momento('Comemoração',TipoPrato) :- (TipoPrato='lanche';TipoPrato='carne vermelha';TipoPrato='ave';TipoPrato='massa').
momento('Datas especiais',TipoPrato) :- gordura(TipoPrato,_).

lugar('Serra Gaúcha','Brasil').
lugar('Cordilheira dos Andes','Chile').
lugar('Mendoza','Argentina').
lugar('Ibiza','Espanha').
lugar('Paris','França').
lugar('Porto','Portugal').
lugar('Toscana','Itália').
lugar('Sidney','Austrália').

fruta('Tinto',Fruta) :- (Fruta='Cereja';Fruta='Cassis';Fruta='Ameixa').
fruta('Branco',Fruta) :- (Fruta='Maçã';Fruta='Abacaxi';Fruta='Melão').

%(Cerveja, Vodka, Uísque, Rum, Drinks)
%Uísque, vodka > Rum,Drinks > Cerveja
comparaBebida(TeorAlcoolico,'Drinks') :- teoralcoolico(Id,TeorAlcoolico), (TeorAlcoolico =< 13).
comparaBebida(TeorAlcoolico,'Cerveja') :- teoralcoolico(Id,TeorAlcoolico),(TeorAlcoolico == 13.5).
comparaBebida(TeorAlcoolico,TipoBebida) :- (TipoBebida='Vodka';TipoBebida='Uísque'),teoralcoolico(Id,TeorAlcoolico),(TeorAlcoolico > 13.5).

queijo(Id,Amadurecimento) :- (Amadurecimento = carvalho8m; Amadurecimento = carvalho9m), (idAmadurecimento(Id,carvalho8m);idAmadurecimento(Id,carvalho9m)).
queijo(Id,Amadurecimento) :- (Amadurecimento = carvalho12m; Amadurecimento = carvalho10m), (idAmadurecimento(Id,carvalho10m);idAmadurecimento(Id,carvalho12m)).
queijo(Id,Amadurecimento) :- idAmadurecimento(Id,Amadurecimento).


pergunta1 :- 
	write('Qual a ocasião que mais te agrada no momento? '),nl,
 	write('1. Coqueteis'), nl,
	write('2. HH'), nl,
	write('3. Piscina'), nl,
	write('4. Churrasco'), nl,
	write('5. Almoço'), nl,
	write('6. Jantar'), nl,
	write('7. Festa'), nl,
	write('8. Comemoração'), nl,
	write('9. Datas especiais'), nl,
	write('0. Sair'), nl,
 	read(X),
 	resposta1(X,Param1),nl,
 	write(Param1),nl,
	retornaVinho1(Id,Param1),
	esquece1(pontuacao(Id,Pontuacao)),
	Pont is Pontuacao+10,
	atualiza(pontuacao(Id,Pont)),nl,
		pergunta2.

pergunta2 :- 
	write('Qual desses lugares você gostaria de estar agora? '),nl,
 	write('1. Serra Gaúcha'), nl,
	write('2. Cordilheira dos Andes'), nl,
	write('3. Mendoza'), nl,
	write('4. Ibiza'), nl,
	write('5. Paris'), nl,
	write('6. Porto'), nl,
	write('7. Toscana'), nl,
	write('8. Sidney'), nl,
	write('0. Sair'), nl,
 	read(X),
 	resposta2(X,Param2),nl,
 	write(Param2),nl,
	retornaVinho2(Id,Param2),
	esquece1(pontuacao(Id,Pontuacao)),
	Pont is Pontuacao+10,
	atualiza(pontuacao(Id,Pont)),nl,
		pergunta3.

pergunta3 :- 
	write('O que mais te chama atenção em um prato? '),nl,
 	write('1. carne vermelha'), nl,
	write('2. suína'), nl,
	write('3. salada'), nl,
	write('4. peixes'), nl,
	write('5. frutos do mar'), nl,
	write('6. massa'), nl,
	write('7. lanche'), nl,
	write('8. ave'), nl,
	write('0. Sair'), nl,
 	read(X),
 	resposta3(X,Param3),nl,
 	write(Param3),nl,
	retornaVinho3(Id,Param3),
	esquece1(pontuacao(Id,Pontuacao)),
	Pont is Pontuacao+10,
	atualiza(pontuacao(Id,Pont)),nl,
		pergunta4.

pergunta4 :- 
	write('Como você prefere seu prato? '),nl,
	write('1. leve'), nl,
	write('2. mediano'), nl,
	write('3. com personalidade'), nl,
	write('4. muita personalidade'), nl,
	write('0. Sair'), nl,
 	read(X),
 	resposta4(X,Param4),nl,
 	write(Param4),nl,
	retornaVinho4(Id,Param4),
	esquece1(pontuacao(Id,Pontuacao)),
	Pont is Pontuacao+10,
	atualiza(pontuacao(Id,Pont)),nl,
	pergunta5.

pergunta5 :- 
	write('Qual estilo de prato mais te satisfaz? '),nl,
 	write('1. light'), nl,
	write('2. magro'), nl,
	write('3. mediano'), nl,
	write('4. gorduroso'), nl,
	write('0. Sair'), nl,
 	read(X),
 	resposta5(X,Param5),nl,
 	write(Param5),nl,
	retornaVinho5(Id,Param5),
	esquece1(pontuacao(Id,Pontuacao)),
	Pont is Pontuacao+10,
	atualiza(pontuacao(Id,Pont)),nl,
	pergunta6.

pergunta6 :- 
	write('Quais dos queijos você mais se identifica? '),nl,
 	write('1. Queijo Branco'), nl,
	write('2. Queijo Minas'), nl,
	write('3. Queijo Prato'), nl,
	write('4. Queijo Provolone'), nl,
	write('5. Queijo Gorgonzola'), nl,
	write('6. Queijo Roquefort'), nl,
	write('0. Sair'), nl,
 	read(X),
 	resposta6(X,Param6),nl,
 	write(Param6),nl,
	retornaVinho6(Id,Param6),
	esquece1(pontuacao(Id,Pontuacao)),
	Pont is Pontuacao+10,
	atualiza(pontuacao(Id,Pont)),nl,
	pergunta7.

pergunta7 :- 
	write('Que cor você prefere? '),nl,
 	write('1. Rubi'), nl,
	write('2. Amarelo'), nl,
	write('3. Palha'), nl,
	write('4. Vermelho'), nl,
	write('5. Violeta'), nl,
	write('6. Cereja'), nl,
	write('0. Sair'), nl,
 	read(X),
 	resposta7(X,Param7),nl,
 	write(Param7),nl,
	retornaVinho7(Id,Param7),
	esquece1(pontuacao(Id,Pontuacao)),
	Pont is Pontuacao+10,	
	atualiza(pontuacao(Id,Pont)),nl,
	pergunta8.

pergunta8 :- 
	write('Quais dessas frutas mais te agrada? '),nl,
 	write('1. Cereja'), nl,
	write('2. Ameixa'), nl,
	write('3. Cassis'), nl,
	write('4. Maçã'), nl,
	write('5. Abacaxi'), nl,
	write('0. Sair'), nl, 	
	read(X),
 	resposta8(X,Param8),nl,
 	write(Param8),nl,
	retornaVinho8(Id,Param8),
	esquece1(pontuacao(Id,Pontuacao)),
	Pont is Pontuacao+10,
	atualiza(pontuacao(Id,Pont)),nl,
	pergunta9.

pergunta9 :- 
	write('Que outra bebida alcólica você consumiria? '),nl,
 	write('1. Cerveja'), nl,
	write('2. Vodka'), nl,
	write('3. Uísque'), nl,
	write('4. Rum'), nl,
	write('5. Drinks'), nl,
 	write('0. Sair'), nl,
 	read(X),
 	resposta9(X,Param9),nl,
 	write(Param9),nl,
	retornaVinho9(Id,Param9),
	esquece1(pontuacao(Id,Pontuacao)),
	atualiza(pontuacao(Id,Pont)),nl.


retornaVinho1(Id,Ocasiao) :- momento(Ocasiao,TipoPrato), harmonizacao(Id,TipoPrato).
retornaVinho2(Id,Lugar) :- lugar(Lugar,Pais),origem(Id,Pais).
retornaVinho3(Id,TipoPrato) :- harmonizacao(Id,TipoPrato).
retornaVinho4(Id,Tempero) :- sabores(TipoPrato,Tempero), harmonizacao(Id,TipoPrato).
retornaVinho5(Id,Estilo) :- gordura(TipoPrato,Estilo), harmonizacao(Id,TipoPrato).
retornaVinho6(Id,Queijo) :- queijo(Id,Queijo).
retornaVinho7(Id,Cor) :- visual(Id,Cor).
retornaVinho8(Id,Fruta) :- fruta(TipoVinho,Fruta),write(TipoVinho),nl,tipo(Id,TipoVinho).
retornaVinho9(Id,TipoBebida) :- comparaBebida(TeorAlcoolico,TipoBebida), teoralcoolico(Id,TeorAlcoolico).

resposta1(0,Param1):- !.
resposta1(1,Param1):- Param1='Coqueteis', nl, !.
resposta1(2,Param1):- Param1='HH', nl, !.
resposta1(3,Param1):- Param1='Piscina', nl, !.
resposta1(4,Param1):- Param1='Churrasco', nl, !.
resposta1(5,Param1):- Param1='Almoço', nl, !.
resposta1(6,Param1):- Param1='Jantar', nl, !.
resposta1(7,Param1):- Param1='Festa', nl, !.
resposta1(8,Param1):- Param1='Comemoração', nl, !.
resposta1(9,Param1):- Param1='Datas especiais', nl, !.
resposta1(_,Param1):- write('Essa opção não existe :('), nl, !.

resposta2(0,Param2):- !.
resposta2(1,Param2):- Param2='Serra Gaúcha', nl, !.
resposta2(2,Param2):- Param2='Cordilheira dos Andes', nl, !.
resposta2(3,Param2):- Param2='Mendoza', nl, !.
resposta2(4,Param2):- Param2='Ibiza', nl, !.
resposta2(5,Param2):- Param2='Paris', nl, !.
resposta2(6,Param2):- Param2='Porto', nl, !.
resposta2(7,Param2):- Param2='Toscana', nl, !.
resposta2(8,Param2):- Param2='Sidney', nl, !.
resposta2(_,Param2):- write('Essa opção não existe :('), nl, !.

resposta3(0,Param3):- !.
resposta3(1,Param3):- Param3='carne vermelha', nl, !.
resposta3(2,Param3):- Param3='suína', nl, !.
resposta3(3,Param3):- Param3='salada', nl, !.
resposta3(4,Param3):- Param3='peixes', nl, !.
resposta3(5,Param3):- Param3='frutos do mar', nl, !.
resposta3(6,Param3):- Param3='massa', nl, !.
resposta3(7,Param3):- Param3='lanche', nl, !.
resposta3(8,Param3):- Param3='ave', nl, !.
resposta3(_,Param3):- write('Essa opção não existe :('), nl, !.

resposta4(0,Param4):- !.
resposta4(1,Param4):- Param4='leve', nl, !.
resposta4(2,Param4):- Param4='mediana', nl, !.
resposta4(3,Param4):- Param4='com personalidade', nl, !.
resposta4(4,Param4):- Param4='muita personalidade', nl, !.
resposta4(_,Param4):- write('Essa opção não existe :('), nl, !.

resposta5(0,Param5):- !.
resposta5(1,Param5):- Param5='light', nl, !.
resposta5(2,Param5):- Param5='magro', nl, !.
resposta5(3,Param5):- Param5='mediano', nl, !.
resposta5(4,Param5):- Param5='gorduroso', nl, !.
resposta5(_,Param5):- write('Essa opção não existe :('), nl, !.

resposta6(0,Param6):- !.
resposta6(1,Param6):- Param6=nao, nl, !.
resposta6(2,Param6):- Param6=sim, nl, !.
resposta6(3,Param6):- Param6=carvalho6m, nl, !.
resposta6(4,Param6):- Param6=carvalho8m, nl, !.
resposta6(5,Param6):- Param6=carvalho10m, nl, !.
resposta6(6,Param6):- Param6=carvalho12m, nl, !.
resposta6(_,Param6):- write('Essa opção não existe :('), nl, !.

resposta7(0,Param7):- !.
resposta7(1,Param7):- Param7='Rubi', nl, !.
resposta7(2,Param7):- Param7='Amarelo', nl, !.
resposta7(3,Param7):- Param7='Palha', nl, !.
resposta7(4,Param7):- Param7='Vermelho', nl, !.
resposta7(5,Param7):- Param7='Violeta', nl, !.
resposta7(6,Param7):- Param7='Cereja', nl, !.
resposta7(_,Param7):- write('Essa opção não existe :('), nl, !.

resposta8(0,Param8):- !.
resposta8(1,Param8):- Param8='Cereja', nl, !.
resposta8(2,Param8):- Param8='Ameixa', nl, !.
resposta8(3,Param8):- Param8='Cassis', nl, !.
resposta8(4,Param8):- Param8='Maçã', nl, !.
resposta8(5,Param8):- Param8='Abacaxi', nl, !.
resposta8(_,Param8):- write('Essa opção não existe :('), nl, !.

resposta9(0,Param9):- !.
resposta9(1,Param9):- Param9='Cerveja', nl, !.
resposta9(2,Param9):- Param9='Vodka', nl, !.
resposta9(3,Param9):- Param9='Uísque', nl, !.
resposta9(4,Param9):- Param9='Rum', nl, !.
resposta9(5,Param9):- Param9='Drinks', nl, !.
resposta9(_,Param9):- write('Essa opção não existe :('), nl, !.

ocasiao('Cerveja','Balada').
ocasiao('Vinho','Jantar').

sabendo(Nome):- (X='Balada'; X='Jantar'; X='Natal'; X='Comemorações'),ocasiao(Nome,X).

pergunta :- write('Qual o id do vinho: '), read(Id), procuraId(Vinho,Id),nl,write('O vinho é: '),write(Vinho).
pergunta22 :- write('Qual o tipo do vinho: '), read(Tipo),vinho(Id,_,_,Tipo,_,_,_,_,_),nl,write('O id do vinho é: '),nl,write(Id),funcaoTeste(Id).
funcaoTeste(Id) :- nl,nome(Id,Nome),write('O nome é: '),write(Nome).

esquece(X):-
	esquece1(X), fail.
esquece(X).

esquece1(X):-
	retract(X).
esquece1(X).

atualiza(X):-
	esquece1(X), assert(X).

memoriza(X):-
	assert(X).

