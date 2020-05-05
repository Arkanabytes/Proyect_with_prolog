/**************************************************/
/*** Nombre:    identificadorEnfermedades.pl    ***/
/*** Practica:  Proyecto Prolog                 ***/
/*** Tema:      Enfermedades                    ***/
/*** Curso:     2019-2020                       ***/
/*** Autor:     Consuelo Pinto Toro             ***/
/**************************************************/

go:hipotesis(Enfermedades),
write('Es posible que tengas: ');
write(Enfermedades),
nl,
undo;

%Hipotesis que deben ser comprobadas
Hipotesis(ebola):-
Hipotesis(coronavirus):-
Hipotesis(porcina):-
Hipotesisa(aviar):-
Hipotesis(sida):-
Hipotesis(influeza):-
Hipotesis(desconocida):-
 
%hipotesis identificacion de sintomas    
ebola:-
verifica(fiebre),
verifica(dolor_cabeza),
verifica(dolores_musculares),
verifica(diarrea_vomitos),
verifica(erupciones_piel),
    
coronavirus:-
verifica(fiebre),
verifica(tos),
verifica(dificultat_respiratoria),
verifica(escalofrios),
verifica(perdida_olftato),


porcina:-
verifica(tos),
verifica(dolor_cabeza),
verifica(fiebre),
verifica(falta_apetito),
verifica(congestion_nasal),
verifica(nauseas_vomitos_dolor_abdominal),


aviar:-
verifica(fiebre_38),
verifica(dolor_extremidades),
verifica(insomnio),
verifica(dolor_muscular),
verifica(dolor_garganta),
   
sida:-
verifica(aftas),
verifica(dolor_garganta),
verifica(infecciones_recurrentes),
verifica(cansancio_persistente),
verifica(perdida_peso),
    
influeza:-
verifica(fiebre_con_escalofrios),
verifica(tos),
verifica(mucosidad_nasal),
verifica(cansancio_persistente),
verifica(dolor_cabeza),
   
/*Como hcaer preguntas*/
ask(Preguntas):-
write('El paciente tiene los siguientes sintomas '),
write(Preguntas),
write('?'),
read(respuesta),
nl,
 (   (respuesta == si; respuesta == s)
 ->  
confirmar(si(Preguntas));
confirmar(no(Preguntas)),fail).

:- dynamic yes/1,no/1.
/*COMO VERIFERICAREMOS*/
verifica(S):-
    (si(s):
    ->  
    true;
    (no(s)
    fail ;
ask(S))).
/* undo all yes/no assertions*/
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.
