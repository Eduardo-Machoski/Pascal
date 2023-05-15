(*

Faça um programa em Pascal que leia um inteiro positivo n, e escreva a soma real dos n primeiros termos da série abaixo:

S= 100/1 - 997/2 + 994/3 - 991/4 + ...

Imprima a saída com duas casas decimais.

Dica: o operador unário - pode ser usado para controlar o sinal.

Exemplo:
Entrada 1:
2
Saída Esperada 1:
501.50

Entrada 2:
4
Saída Esperada 2:
585.08
*)

program Series_001;

var
	x, n, nominador, denominador: integer;
	total: double;
	subtrai: boolean;

begin
	readln(n);
	subtrai:= false;
	total:= 0;
	nominador:= 1000;
	denominador:= 1;
	for x:= 1 to n do
	begin
		if not subtrai then 
		begin
			total:= total + nominador/denominador;
			subtrai:= not subtrai;
		end
		else 
		begin
			total:= total - nominador/denominador;
			subtrai:= not subtrai;
		end;
		nominador:= nominador - 3;
		denominador:= denominador + 1;
	end;
	writeln(total:0:2);
end.
