foil_predicates([abuelo/2, padre/2, madre/2, progenitor/2]).
foil_cwa(true).                   
foil_use_negations(true).        % Don't use negations of foil_predicates
foil_det_lit_bound(0).            % Don't add any determinate literals
                                  % In general, this is a depth limit on
                                  %   the search for determinate literals
verbosity(2).
% Ejemplos positivos
abuelo(felipe,guillermo).
abuelo(felipe,harry).
abuelo(felipe,pedro).
abuelo(felipe,zara).
abuelo(felipe,beatriz).
abuelo(felipe,eugenia).
% Conocimiento base
padre(felipe,carlos).
padre(felipe,ana).
padre(felipe,andres).
padre(felipe,eduardo).
padre(carlos,guillermo).
padre(carlos,harry).
padre(mark,pedro).
padre(mark,zara).
padre(andres,beatriz).
padre(andres,eugenia).
madre(isabel,carlos).
madre(isabel,ana).
madre(isabel,andres).
madre(isabel,eduardo).
madre(diana,guillermo).
madre(diana,harry).
madre(ana,pedro).
madre(ana,zara).
madre(sara,beatriz).
madre(sara,eugenia).

progenitor(X,Y):- padre(X,Y).
progenitor(X,Y):- madre(X,Y).