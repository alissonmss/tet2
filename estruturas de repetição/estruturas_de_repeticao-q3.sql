do $$
	declare
		y varchar;
		s varchar;
		b varchar;
	begin
		s := '*';
		b := '';
		for y in 1..10 loop
			s := s || b;
		raise notice '%', s;
			b := ' *';
		end loop;
end $$;