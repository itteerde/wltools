(* Formatting numbers *)
    fN[x_] := If[x == Round[x], Round[x], N[x]];
    fN[x_, digits : _Integer] :=  If[x == Round[x], Round[x], N[x, digits]];
    fN[x_, precision_] :=  If[Abs[x - Round[x]] <= precision, Round[x], N[x]];
    fN[x_, precision_, digits : Integer] := 
        If[Abs[x - Round[x]] <= precision, Round[x], N[x, digits]];