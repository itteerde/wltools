(* Formatting numbers *)

    (* Format a numeric symbol to be kept Integer if it evaluates to an Integer, or be converted to a floating point number (N[x]) otherwise. Variants allow to specify digits for the floating point number or convert only if outside a differnce to the Integer. *)
    fN[x_] := If[x == Round[x], Round[x], N[x]];
    fN[x_, digits : _Integer] :=  If[x == Round[x], Round[x], N[x, digits]];
    fN[x_, precision_] :=  If[Abs[x - Round[x]] <= precision, Round[x], N[x]];
    fN[x_, precision_, digits : Integer] := 
        If[Abs[x - Round[x]] <= precision, Round[x], N[x, digits]];


(* Debugging Tools *)

    (* Exports the ExpressionGraph of the Expression to the current directory as expressionGraph.jpeg to be viewed in external tooling. The current directory is Directory[], the directory in which wolfram.exe was called for console, and can be changed with SetDirectory["C:/somedir/anotherdir"]. *)
    exportExpression[e_] := Export["expressionGraph.jpeg",ExpressionGraph[e,VertexLabels->Automatic]];