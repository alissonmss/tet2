do $$
	declare
		n integer;
	begin
		for n in 1..100 loop
			raise notice '% * 7 = %', n, n * 7;
		end loop;
end $$;