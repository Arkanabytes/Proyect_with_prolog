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
write('Alerta!'),
undo.

/*suponer debería ser probado*/
suponer(coronavirus) :- coronavirus, !.
suponer(ebola) :-  ebola, !.
suponer(gripe_porcina) :- gripe_porcina, !.
suponer(gripe_aviar) :- gripe_aviar, !.
suponer(sida) :- sida, !.
suponer(desconocida). /* no diagnosis*/

/*suponer Identification Rules*/

coronavirus :-
id(fiebre),
id(dolor_cabeza),
id(dificultad_respiratoria),
id(perdida_olfato),
id(tos_estornudos),
id(dolor_garganta),
write('Consejos y sugerencias:'),nl,
write('1: Paracetamol/tab'),nl,
write('2: panadol/tab'),nl,
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
write('1: Zmapp/tab'),nl,
write('2: Favipiravir/tab'),nl,
write('3: Interferón/tab'),nl,
write('La recuperacion dependera del sistema inmunologico, mantener presion presion arterial normal y estado de oxigeno'),
nl.

gripe_porcina :-
id(dolor_cabeza),
id(dolor_abdominal),
id(poco_apetito),
id(fiebre),
write('Consejos y sugerencias:'),nl,
write('1: Amantadina/tab'),nl,
write('2: Rimantadina/tab'),nl,
write('3: Oseltamivir/tab'),nl,
write('4: Zanamivir/tab'),nl,
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
write('1: Paracetamol/tab'),nl,
write('2: Aleve/tab'),nl,
write('3: Advil/tab'),nl,
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
write('1: Abacavir/tab'),nl,
write('2: Emtricitabina/tab'),nl,
write('3: Lamivudina/tab'),nl,
write('4: Nevirapina'),nl,
write('Para las personas con el VIH, deben cumplir tratamiento es clave para mantenerse sanas y acudir a todas las citas medicas'),
nl.

/* how to ask questions */
ask(Preguntas) :-
write("**Identificador de pandemias**"), nl,
write("El objetivo de este programa es identificar el enfermedades epidemiologicas "), nl,
write("proporcionando los sintomas que tuviese cada individuo y asi dar un pronostico."), nl, nl,
write('Responda un "si" tiene los siguiente síntomas caso contrario indique "no":- '),
write(Preguntas),
write(' ? '),
read(Respuesta),
nl,
( (Respuesta == si ; Respuesta == s)
->
assert(yes(Preguntas)) ;
assert(no(Preguntas)), fail).

:- dynamic yes/1,no/1.
/*How to id something */
id(S) :-
(yes(S)
->
true ;
(no(S)
->
fail ;
ask(S))).
/* undo all yes/no assertions*/
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.
