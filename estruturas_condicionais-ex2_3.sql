do $$
	declare
		numero integer;
	begin
		numero := 24;

		if numero % 2 = 1
			then
				raise notice 'número é impar';
		elsif numero % 2 = 0
			then
				raise notice 'número é par';
		end if;
end $$;