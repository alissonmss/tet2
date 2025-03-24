do $$
	declare
		n integer;
		s varchar;
		r varchar;
		w varchar;
		j varchar;
	begin
		r := '0';
		w := '1';
		j := '';
		for n in 1..10 loop
			j := r || w;
			r := r || r;
			w := w || w;
		end loop;
		raise notice '%', r;
end $$;