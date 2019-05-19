foil_predicates([sintoma/2, sintoma_dengue/1, produce/2, '='/2]).
foil_cwa(false).		 % No usa la hipotesis del mundo cerrado
foil_use_negations(true). 	 % No usa informacion negativa
foil_det_lit_bound(0). 		 % No a�ade literales determinados

verbosity(2).                    % Devuelve la lista de ejemplos positivos y negativos cubiertos.


% Ejemplos positivos
sintoma(fiebre_elevada, dengue_clasico).
sintoma(dolor_cabeza_intenso, dengue_clasico).
sintoma(dolores_articulares, dengue_clasico).
sintoma(dolores_musculares, dengue_clasico).
sintoma(nauseas, dengue_clasico).
sintoma(vomitos, dengue_clasico).
sintoma(erupciones, dengue_clasico).
sintoma(sangrados, dengue_hemorragico).
sintoma(acumulacion_liquidos_sangre, dengue_hemorragico).
sintoma(dificultad_respiratoria, dengue_hemorragico).
sintoma(dolor_abdominal_intenso, dengue_hemorragico).
sintoma(respiracion_acelerada, dengue_hemorragico).
sintoma(vomitos_con_sangre, dengue_hemorragico).


% Ejemplos negativos.
sintoma(fiebre, resfriado) :- fail.
sintoma(acumulacion_liquidos, hidropesia) :- fail.
sintoma(dolor_cabeza,migranha):- fail.


% Conocimiento base.
sintoma_dengue(fiebre_elevada).
sintoma_dengue(dolor_cabeza).
sintoma_dengue(vomitos).
sintoma_dengue(dolor_muscular).
sintoma_dengue(dolor_ocular).
sintoma_dengue(dolor_articular).
sintoma_dengue(erupciones).

produce(dengue_hemorragico, sangrados).
produce(dengue_clasico, dolor_cabeza_intenso).




















