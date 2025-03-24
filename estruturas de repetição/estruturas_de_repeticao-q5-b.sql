do $$
	declare
		n integer;
		nn integer;
		s varchar;
		r varchar;
		j varchar;
	begin
		r := '';
		for n in 1..3 loop
				j := '' || r;
				r := j || 'B';
				j := 'A' || r;
		end loop;
		raise notice '%', j;
end $$;