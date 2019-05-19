foil_predicates([hija/2, hombre/1, mujer/1, progenitor/2, '='/2]).
foil_cwa(false).                   
foil_use_negations(true).        % Dont use negations of foil_predicates
foil_det_lit_bound(0).            % Dont add any determinate literals
                                  % In general, this is a depth limit on
                                  %   the search for determinate literals

verbosity(2).

% Ejemplos positivos

hija(maria,ana).
hija(eva,tomas).

% Ejemplos negativos

hija(tomas,ana):-fail.
hija(eva,ana):- fail.
hija(eva,ignacio):- fail.

% Conocimiento base

hombre(tomas).
hombre(ignacio).

mujer(ana).
mujer(eva).
mujer(maria).

progenitor(ana,maria).
progenitor(ana,tomas).
progenitor(tomas,eva).
progenitor(tomas,ignacio).




