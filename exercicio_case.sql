-- 1) Dado um número, escreva se o número é positivo, negativo ou zero.

do $$
	declare n integer;

begin
	n := -1;
	case
		when n > 0 then raise notice 'positivo';
		when n < 0 then raise notice 'negativo';
		else raise notice 'zero';
	end case;
end $$;

-- 2) Dado um número positivo entre 20 e 39, escreva-o por extenso.

