do $$
	declare
		numero integer;
	begin
		numero := 23;

		if numero % 2 = 1
			then
				raise notice 'número é impar';
		end if;
end $$;