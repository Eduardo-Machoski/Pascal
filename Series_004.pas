(*

Observe a soma infinita abaixo. Ela é formada por frações em que o numerador e o denominador são os valores sucessores dos valores do
numerador e do denominador da frações anterior, porém, alternadamente invertidos (exceto a primeira fração).

	S= 1/2 + 4/3 + 5/6 + 8/7 + 9/10 + 12/11 + ...

Faça um programa em Pascal para calcular o valor real de S, considerando apenas os 10 primeiros termos da série. Ao final, imprimir o resultado encontrado para S com 2 casas decimais.
*)


program Series_004;

var
	soma: double;
	x, numerador, denominador: integer;

begin
	soma:= 0;
	numerador:= 1;
	denominador:= 2;
	for x:= 1 to 10 do 
	begin
		soma:= soma + numerador/denominador;
		if numerador > denominador then 
		begin
			numerador:= numerador + 1;
			denominador:= numerador + 1;
		end
		else 
		begin
			denominador:= denominador + 1;
			numerador:= denominador + 1;
		end;
	end;
	writeln(soma:0:2);
end.
