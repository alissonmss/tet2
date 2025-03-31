do $$
	declare
		y varchar;
		s varchar;
		b varchar;
		d varchar;
		h varchar;
		n integer;
	begin
		s := '*';
		b := '*';
		d := ' ';
		for y in 1..9 loop
		raise notice '%', s;
			s := b || d || b;
			d := d || '  ';
		end loop;
		
		-- base do triângulo
		h := '';
		for n in 1..10 loop
 			h := h || '* ';
		end loop;
		raise notice '%', h;
end $$;