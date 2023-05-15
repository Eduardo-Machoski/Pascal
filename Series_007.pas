program Series_007;

var
	soma: double;
	nominador, denominador, x: integer;

begin
	nominador:= 1;
	denominador:= 2;
	soma:= 0;
	for x:= 1 to 10 do begin
		if (x mod 2 = 1) then begin
				soma:= soma - nominador/(denominador * 10);
			end
		else begin
			soma:= soma + (nominador * 10)/denominador;
		end;
		nominador:= nominador + 2;
	       	denominador:= denominador + 2;	
	end;
	writeln(soma:0:2);
end.
