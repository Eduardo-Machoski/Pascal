(*

Faça um programa em Pascal que leia do teclado um número inteiro positivo N. Depois disso, o programa deve calcular e imprimir a soma de todas
as frações em que a soma do numerador com o denominador de cada fração seja o número N.

Por exemplo, se N=7, o programa deve calcular a soma abaixo:

S = 1/6 + 2/5 + 3/4 + 4/3 + 5/2 + 6/1

Seu programa deve imprimir a saída o valor real com duas casas decimais.

Exemplo:
Entrada 1:
7
Saída Esperada 1:
11.15

Entrada 2:
4
Saída Esperada 2:
4.33
*)


program Series_002;

var
	N, nominador, denominador: integer;
	soma: real;

begin
	readln(N);
	soma:= 0;
	nominador:= 1;
	denominador:= N - 1;
	while nominador < N do
	begin
		soma:= soma + nominador/denominador;
		nominador:= nominador + 1;
		denominador:= denominador - 1;
	end;
	writeln(soma:0:2);
end.
