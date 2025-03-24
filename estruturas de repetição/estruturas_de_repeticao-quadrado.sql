do $$
	declare
		x integer;
		y integer;
		s varchar;
	begin
		for y in 1..10 loop
			s := '';
			for x in 1..10 loop
				s := s || ' * ';
			end loop;
			raise notice '%', s;
		end loop;
end $$;