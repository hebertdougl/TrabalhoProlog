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
:-dynamic vinicola/2.
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
:-dynamic prato/5.
:-dynamic origem/2.
:-dynamic harmonizacao/2.

%Vinho
vinho(cddrcs2011,'Casillero Del Diablo Reserva Cabernet Sauvignon',2011,'Tinto','Cabernet Sauvignon',13.5,carvalho8m,15,4).
vinho(sr2008,'Sabor Real',2008,'Tinto','Tempranillo',14.5,carvalho10m,15,3.5).

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


%Localizacao
localizacao('Chile','Valle Central','Viña Concha Y Toro').
localizacao('Espanha','Toro','Bodegas Campiña').
localizacao( , , ).

regiao('Chile','Valle Central').
vinicola('Chile','Viña Concha Y Toro').
regiao('Espanha','Toro').
vinicola('Espanha','Bodegas Campiña').

%Caracteristica Pais
caracteristicaPais('Chile',cl, , ,frio).
caracteristicaPais('Espanha',es, , ,frio).

sigla('Chile',cl).
adjetivo('Chile', , ).
clima('Chile',frio).
sigla('Espanha',es).
adjetivo('Espanha', , ).
clima('Espanha', frio).


%Caracteristica Vinho
caracteristicaVinho('Rubi intenso','Frutas negras','Especiarias','Macio','Equilibrado','Frutado',cddrcs2011).
caracteristicaVinho('Rubi','Frutas negras secas','Especiarias','Encorpado','Intenso','Saboroso',sr2008).

visual(cddrcs2011,'Rubi intenso').
olfativo(cddrcs2011,'Frutas negras','Especiarias').
gustativo(cddrcs2011,'Macio','Equilibrado','Frutado').
visual(sr2008,'Rubi').
olfativo(sr2008,'Frutas negras','Especiarias').
gustativo(sr2008,'Macio','Equilibrado','Frutado').


%Amadurecimento
amadurecimento(carvalho8m,carvalho,'8 meses').
amadurecimento(carvalho10m,carvalho,'10 meses').

barril(carvalho8m,carvalho).
tempo(carvalho8m,'8 meses').
barril(carvalho10m,carvalho).
tempo(carvalho10m,'10 meses').


%Pratos
prato('Carne assada', , , ,).
prato('Canelone queijo', , , ,).
prato('Costela no bafo', , , ,).
prato('Linguiça na brasa', , , ,).
prato('Pizza de calabresa', , , ,).
prato('Chuleta grelhada', , , , ).
prato('Costela ensopada', , , , ).
prato('Massas de funghi secchi', , , , ).
prato('Raviole de rabada', , , , ).


%Relações entre os fatos
origem(cddrcs2011,'Chile').
origem(sr2008,'Espanha').

harmonizacao(cddrcs2011,'Carne assada').
harmonizacao(cddrcs2011,'Canelone queijo').
harmonizacao(cddrcs2011,'Costela no bafo').
harmonizacao(cddrcs2011,'Linguiça na brasa').
harmonizacao(cddrcs2011,'Pizza de calabresa').
harmonizacao(sr2008,'Chuleta grelhada').
harmonizacao(sr2008,'Costela ensopada').
harmonizacao(sr2008,'Massas de funghi secchi').
harmonizacao(sr2008,'Raviole de rabada').


