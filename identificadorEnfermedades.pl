/**************************************************/
/*** Nombre:    identificadorEnfermedades.pl    ***/
/*** Practica:  Proyecto Prolog                 ***/
/*** Tema:      Enfermedades                    ***/
/*** Curso:     2019-2020                       ***/
/*** Autor:     Consuelo Pinto Toro             ***/
/**************************************************/

go:- suposicion(Enfermedad),
write('Creo que el paciente tiene'),
write(Enfermedad),
nl,
write('Alerta '),
undo.

/*suposicion debería ser probado*/
suposicion(coronavirus) :- coronavirus, !.
suposicion(ebola) :-  ebola, !.
suposicion(porcina) :- porcina, !.
suposicion(aviar) :- aviar, !.
suposicion(sida) :- sida, !.
suposicion(desconocio). /* no diagnosis*/

/*suposicion Identification Rules*/

coronavirus :-
id(fiebre),
id(dolor_cabeza),
id(dificultad_respiratoria),
id(perdida_olfato),
id(tos_estornudos),
id(dolor_garganta),
write('Consejos y sugerencias:'),
nl,
write('1: Paracetamol/tab'),
nl,
write('2: panadol/tab'),
nl,
write('3: Ibuprofeno'),
nl,
write('No existe una vacuna contra el coronavirus, solo guardar reposo y beber líquidos abundante los síntomas desaparecerán en pocos días.'),
nl.

ebola :-
id(fiebre),
id(dolor_cabeza),
id(resfriado),
id(body_ache),
write('Consejos y sugerencias:'),
nl,
write('1: Zmapp/tab'),
nl,
write('2: Favipiravir/tab'),
nl,
write('3: Interferón/tab'),
nl,
write('La recuperacion dependera del sistema inmunologico, mantener presion presion arterial normal y estado de oxigeno'),
nl.

porcina :-
id(dolor_cabeza),
id(dolor_abdominal),
id(poco_apetito),
id(fiebre),
write('Consejos y sugerencias:'),
nl,
write('1: Amantadina/tab'),
nl,
write('2: Rimantadina/tab'),
nl,
write('3: Oseltamivir/tab'),
nl,
write('4: Zanamivir/tab'),
nl,
write('Please do complete bed rest and take soft Diet Because'),
nl.

aviar :-
id(fiebre_38),
id(dolor_extremidades),
id(erupciones),
id(insomnio),
write('Consejos y sugerencias:'),
nl,
write('1: Paracetamol/tab'),
nl,
write('2: Aleve/tab'),
nl,
write('3: Advil/tab'),
nl,
write('4: Vacuna'),
nl,
write('No viajar, descansar y beber líquido'),
nl.

sida :-
id(aftas),
id(dolor_garganta),
id(dolor_cabeza),
id(cansancio_persistente),
id(perdida_peso),
id(infecciones_recurrentes),
write('Consejos y sugerencias:'),
nl,
write('1: Abacavir/tab'),
nl,
write('2: Emtricitabina/tab'),
nl,
write('3: Lamivudina/tab'),
nl,
write('4: Nevirapina'),
nl,
write('Para las personas con el VIH, deben cumplir tratamiento es clave para mantenerse sanas y acudir a todas las citas medicas'),
nl.

/* how to pedir cuestionarios */
pedir(cuestionario) :-
write('Tiene el paciente el siguiente síntoma?:'),
write(cuestionario),
write('? '),
read(Respuesta),
nl,
( (Respuesta == yes ; Respuesta == y)
->
confimar(yes(cuestionario)) ;
confimar(no(cuestionario)), fail).

:- dynamic yes/1,no/1.
/*How to id something */
id(S) :-
(yes(S)
->
true ;
(no(S)
->
fail ;
pedir(S))).
/* undo all yes/no confimarions*/
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.
