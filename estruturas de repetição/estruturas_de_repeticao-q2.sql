do $$
	declare
		n integer;
	begin
		for n in 1..10 loop
			raise notice '% * 1 = % | % * 2 = % | % * 3 = % | % * 4 = % | % * 5 = % | % * 6 = % | % * 7 = % | % * 8 = % | % * 9 = % | % * 10 = %',
				n, n * 1, n, n * 2, n, n * 3, n, n * 4, n, n * 5, n, n * 6, n, n * 7, n, n * 8, n, n * 9, n, n * 10;
		end loop;
end $$;