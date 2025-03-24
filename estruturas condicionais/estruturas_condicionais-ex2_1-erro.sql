do $$
	declare
		numero integer;
		par integer;
	begin
		numero := 23;
		par := numero / 2;
			if par is integer then
				raise notice 'número é par';
			else
				raise notice 'número não é par';
			end if;
end $$;