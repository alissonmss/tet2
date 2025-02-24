do $$
	declare
		nota1 numeric;
		nota2 numeric;
		nota3 numeric;
		media numeric;
	begin
		nota1 := 49;
		nota2 := 50;
		nota3 := 50;
		media := (nota1 + nota2 + nota3) / 3;

		if media >= 50 then
			raise notice 'aprovado';
		else
			raise notice 'reprovado';
		end if;
end $$;