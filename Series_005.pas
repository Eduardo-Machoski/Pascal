(*

Observe a soma infinita abaixo. Ela é formada por frações em que cada numerador é o dobro do denominador da fração anterior e cada denominador, por sua vez, é o dobro do numerador da fração anterior (exceto a primeira fração).

S = 1/3 + 6/2 + 4/12 + 24/8 + 16/48 + ...

Faça um programa em Pascal para calcular o valor real de S, considerando apenas os 10 primeiros termos da série. Ao final, imprimir o resultado encontrado para S com duas casas decimais.
*)


program Series_005;

var
	soma: double;
	x, denominador, numerador, numant: integer;

begin
	numerador:= 1;
	denominador:= 3;
	soma:= 0;
	for x:= 1 to 10 do 
	begin
		soma:= soma + numerador/denominador;
		numant:= numerador;
		numerador:= denominador * 2;
		denominador:= numant * 2;
	end;
	writeln(soma:0:2);
end.
