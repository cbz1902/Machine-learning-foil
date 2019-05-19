foil_predicates([sintoma/2, sintoma_dengue/1, produce/2, '='/2]).


foil_cwa(false).		 % No usa la hipotesis del mundo cerrado
foil_use_negations(false). 	 % No usa informacion negativa
foil_det_lit_bound(0). 		 % No añade literales determinados

verbosity(2).          % Devuelve la lista de ejemplos positivos y negativos cubiertos


% Ejemplos positivos
sintoma(fiebre_elevada, dengue_clasico).
sintoma(dolor_cabeza_intenso, dengue_clasico).
sintoma(dolores_articulares, dengue_clasico).
sintoma(dolores_musculares, dengue_clasico).
sintoma(nauseas, dengue_clasico).
sintoma(vomitos, dengue_clasico).
sintoma(erupciones, dengue_clasico).
sintoma(sangrados, dengue_hemorragico).
sintoma(acumulacion_liquidos_sange, dengue_hemorragico).
sintoma(dificultad_respiratoria, dengue_hemorragico).
sintoma(dolor_abdominal_intenso, dengue_hemorragico).
sintoma(respiracion_acelerada, dengue_hemorragico).
sintoma(vomitos_con_sangre, dengue_hemorragico).


% Ejemplos negativos
sintoma(fiebre, resfriado) :-fail.
sintoma(acumulacion_liquidos, hidropesia) :-fail.


% Conocimiento base
sintoma_dengue(fiebre_elevada).
sintoma_dengue(dolor_cabeza_intenso).
sintoma_dengue(dolores_articulares).
sintoma_dengue(dolores_musculares).
sintoma_dengue(dolor_ocular).
sintoma_dengue(nauseas).
sintoma_dengue(erupciones).
sintoma_dengue(sangrados).
sintoma_dengue(acumulacion_liquidos_sange).
sintoma_dengue(dificultad_respiratoria).
sintoma_dengue(dolor_abdominal_intenso).
sintoma_dengue(respiracion_acelerada).
sintoma_dengue(vomitos_con_sangre).

produce(dengue_hemorragico, sangrados).
produce(dengue_clasico, dolor_cabeza_intenso).






















