(*

Observe a soma infinita abaixo. Ela é formada por frações em que cada numerador é a soma entre o numerador e o denominador da fração anterior e cada denominador, por sua vez, é a soma do seu numerador com o denominador da fração anterior (exceto a primeira fração).

S = 1/1 + 2/3 + 5/8 + 13/21 + 34/55 + ...

Faça um programa em Pascal que calcula o valor de S, considerando apenas os 5 primeiros termos da série. Ao final, imprimir o resultado real encontrado para S com duas casas decimais.
*)


program Series_003;

var
	soma: double;
	nominador, denominador, x: integer;

begin
	nominador:= 1;
	denominador:= 1;
	soma:= 0;
	for x:= 1 to 5 do
	begin
		soma:= soma + nominador/denominador;
		nominador:= nominador + denominador;
		denominador:= nominador + denominador;
	end;
	writeln(soma:0:2);
end.
