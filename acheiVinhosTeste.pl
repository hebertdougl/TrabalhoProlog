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
idAmadurecimento:- vinho(Id,_,_,_,_,_,Amadurecimento,_,_).
temperatura:- vinho(Id,_,_,_,_,_,_,Temperatura,_).
nota(Id,Nota):- vinho(Id,_,_,_,_,_,_,_,Nota).


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

%Caracteristica Vinho
caracteristicaVinho('Rubi intenso','Frutas negras','Especiarias','Macio','Equilibrado','Frutado',cddrcs2011).
caracteristicaVinho('Rubi','Frutas negras secas','Especiarias','Encorpado','Intenso','Saboroso',sr2008).
caracteristicaVinho('Amarelo esverdeado','Frutas brancas','Frutas cítricas','Frutado','Equilibrado','Agradável',mpv2010).
caracteristicaVinho('Rubi','Frutas vermelhas','Folhas secas','Frutado','Equilibrado','Agradável',mps2009).
caracteristicaVinho('Palha claro','Frutas tropicais','herbáceas','Corpo médio','Equilibrado','Agradável',asb2011).
caracteristicaVinho('Vermelho atijolado','Frutas vermelhas','violetas','Frutado','Taninos macios','Delicado',fdldn2011).
caracteristicaVinho('Rubi intenso','Frutas vermelhas','cerejas ','Frutado','Equilibrado','bom corpo',fdddd2011).
caracteristicaVinho('Vermelho profundo','Amora','pimenta preta','Macio','Denso','Tostado',hnhs2011).
caracteristicaVinho('Violeta intenso','Frutas negras','baunilha','Frutado','Aporte de madeira','Chocolate',sd2008).
caracteristicaVinho('Cereja escuro','Frutas negras','baunilha','Frutado','Elegante','Leve',bprcpn2012).
caracteristicaVinho('Rubi intenso','Frutas vermelhas','Framboesa','Frutado','Estruturado','Equilibrado',tm2012).
caracteristicaVinho('Rubi','Frutas negras','Cacau','Elegante','Baunilha','Equilibrado',cdtrm2011).
caracteristicaVinho('Rubi intenso','Cereja','ameixa','Encorpado','Aveludado','Final persistente',fbtgcs2011).
caracteristicaVinho('Amarelo claro','Frutas tropicais','Grama cortada','Equilibrado','Fresco','Final persistente',ctrsb2012).
caracteristicaVinho('Rubi intenso','Frutas vermelhas','Notas de Especiarias','Frutas vermelhas','Mineralidade','Final persistente',vmt2010).
caracteristicaVinho('Palha','Frutas tropicais','Damasco','Complexo','Equilibrado','Corpo medio',fv2011).
caracteristicaVinho('Rubi intenso','Frutas vermelhas','Framboesa','Frutado','Equilibrado','Taninos maduros',fdm2011).
caracteristicaVinho('Amarelo palha','Lima','Maçã verde','Refrescante','Volumoso','Taninos maduros',paa2014).
caracteristicaVinho('Amarelo palido','Frutas citricas','Flores','Leve','Elegante','Delicado',ce2010).
caracteristicaVinho('Rubi','Frutas vermelhas','Ervas finas','Frutado','Macio','Final agradavel',cpn2011).
caracteristicaVinho('Palha esverdeado','Frutos tropicais','Maracujá','Rico em frutas','Elegante','Refrescante',jrb2011).

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
combinacao('Parmegiana',' ','ave').
combinacao('Salada',' ','salada').
combinacao('Pernil',' ','suína').
combinacao('Peito de frango',' ','ave').
combinacao('Abobrinha recheada',' ','salada').
combinacao('Lombo suíno',' ','suína').
combinacao('Galinhada',' ','ave').
combinacao('Legumes assados',' ','salada').
combinacao('Rosbife',' ','carne vermelha').
combinacao('Paleta suína',' ','suína').
combinacao('Espaguete',' ','massa').
combinacao('Alcatra assada',' ','carne vermelha').
combinacao('Queijos maduros',' ','lanche').
combinacao('Atum gralhado',' ','peixe').
combinacao('Costelinha suína ',' ','suína').
combinacao('Maminha na brasa ',' ','carne vermelha').
combinacao('Lasanha gratinada ',' ','massa').
combinacao('Filé mignon',' ','carne vermelha').
combinacao('Pernil assado',' ','suína').
combinacao('Pizza de presunto',' ','massa').
combinacao('Tomate recheado',' ','salada').
combinacao('Maminha churrasqueada',' ','carne vermelha').
combinacao('Lombo com bacon',' ','carne vermelha').
combinacao('Paella',' ','fruntos do mar').
combinacao('Salmao assado',' ','fruntos do mar').
combinacao('Bobó de camarão',' ','fruntos do mar').
combinacao('Salada grega',' ','salada').
combinacao('Risoto',' ','massa').
combinacao('Costelinha de porco',' ','suína').
combinacao('Queijos',' ','salada').
combinacao('Peixe assado',' ','frutos do mar').
combinacao('Saladas leves',' ','salada').
combinacao('Torta de palmito',' ','massa').
combinacao('Panqueca de carne',' ','massa').
combinacao('Batata',' ','salada').
combinacao('Bacon',' ','carne vermelha').
combinacao('Aves assadas',' ','ave').
combinacao('Bacon',' ','carne vermelha').
combinacao('Frutos do mar',' ','frutos do mar').
combinacao('Saladas',' ','salada').
combinacao('Frutos do mar',' ','frutos do mar').
combinacao('Queijos leves',' ','lanche').
combinacao('Talharim',' ','massa').
combinacao('Risoto',' ','massa').
combinacao('Marisco',' ','frutos do mar').
combinacao('Peixe',' ','frutos do mar').


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
beberVinhoBranco(Vinho):- nome(Id,Vinho), (combinacao(_,_,_,_,'peixe'); prato(_,'peixe')).
beberVinhoTinto(Vinho):- nome(Id,Vinho), (combinacao(_,_,_,_,'massa'); prato(_,'massa')).

procuraId(Vinho,Id):-nome(Id,Vinho).




