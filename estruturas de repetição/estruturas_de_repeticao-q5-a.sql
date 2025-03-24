do $$
	declare
		n integer;
		s varchar;
		r varchar;
	begin
		r := '';
		for n in 1..13 loop
			r := r || '001';
		end loop;
		raise notice '%', r;
end $$;