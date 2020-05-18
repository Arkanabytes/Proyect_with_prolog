/**************************************************/
/*** Nombre:    identificadorEnfermedades.pl    ***/
/*** Practica:  Proyecto Prolog                 ***/
/*** Tema:      Enfermedades                    ***/
/*** Curso:     2019-2020                       ***/
/*** Autor:     Consuelo Pinto Toro             ***/
/**************************************************/

id_pandemias:- suponer(Enfermedad),
write('Observacion: el paciente es posible que tenga la enfermedad: '),
write(Enfermedad),nl,
write('Alerta!'), nl, nl,
write('Autor: Consuelo Pinto Toro'),nl,
write('Dni: Y2778738F'),   
undo.

/*suponer debería ser probado*/
suponer(coronavirus) :- coronavirus, !.
suponer(ebola) :-  ebola, !.
suponer(gripe_porcina) :- gripe_porcina, !.
suponer(gripe_aviar) :- gripe_aviar, !.
suponer(sida) :- sida, !.
suponer(desconocida). /* no diagnostico*/

/*suponer Identificacion de reglas*/

coronavirus :-
id(fiebre),
id(dolor_cabeza),
id(dificultad_respiratoria),
id(perdida_olfato),
id(tos_estornudos),
id(dolor_garganta),
write('Consejos y sugerencias:'),nl,
write('1: Paracetamol'),nl,
write('2: Panadol'),nl,
write('3: Ibuprofeno'),nl,
write('No existe una vacuna contra el coronavirus, solo guardar reposo y beber líquidos abundante los síntomas desaparecerán en pocos días.'),
nl.

ebola :-
id(fiebre),
id(dolor_cabeza),
id(dolor_extremidades),
id(conjuntivitis),
id(erupciones),
id(dolor_articulaciones),
write('Consejos y sugerencias:'),nl,
write('1: Zmapp'),nl,
write('2: Favipiravir'),nl,
write('3: Interferón'),nl,
write('La recuperacion dependera del sistema inmunologico, mantener presion presion arterial normal y estado de oxigeno'),
nl.

gripe_porcina :-
id(dolor_cabeza),
id(dolor_abdominal),
id(poco_apetito),
id(fiebre),
write('Consejos y sugerencias:'),nl,
write('1: Amantadina'),nl,
write('2: Rimantadina'),nl,
write('3: Oseltamivir'),nl,
write('4: Zanamivir'),nl,
write('Por favor descanse en cama y tome una dieta blanda y no viajar'),
nl.

gripe_aviar :-
id(fiebre_38),
id(dolor_extremidades),
id(erupciones),
id(insomnio),
id(diarrea),
id(tos_estornudos),
write('Consejos y sugerencias:'),nl,
write('1: Paracetamol'),nl,
write('2: Aleve'),nl,
write('3: Advil'),nl,
write('4: Vacuna'),nl,
write('No viajar, descansar y beber líquido'),
nl.

sida :-
id(aftas),
id(dolor_garganta),
id(dolor_cabeza),
id(cansancio_persistente),
id(perdida_peso),
id(infecciones_recurrentes),
write('Consejos y sugerencias:'),nl,
write('1: Abacavir'),nl,
write('1: Emtricitabina'),nl,
write('3: Lamivudina'),nl,
write('4: Nevirapina'),nl,
write('Para las personas con el VIH, deben cumplir tratamiento es clave para mantenerse sanas y acudir a todas las citas medicas'),
nl.

/* preguntas y presentacion*/
ask(Preguntas) :-
write('**Identificador de pandemias**'), nl,
write('El objetivo de este programa es identificar el enfermedades epidemiologicas '), nl,
write('proporcionando los sintomas que tuviese cada individuo y asi dar un pronostico.'), nl, nl,
write('Responda un "si" tiene los siguiente síntomas caso contrario indique "no": '),
write(Preguntas),
write(' ? '),
read(Respuesta),
nl,
( (Respuesta == si ; Respuesta == s)
->
assert(si(Preguntas)) ;
assert(no(Preguntas)), fail).

:- dynamic si/1,no/1.
/*como distribuyo id */
id(S) :-
(si(S)
->
true ;
(no(S)
-> 
fail ;
ask(S))).
/*todo si /y las no confirmaciones*/
undo :- retract(si(_)),fail.
undo :- retract(no(_)),fail.
undo.
