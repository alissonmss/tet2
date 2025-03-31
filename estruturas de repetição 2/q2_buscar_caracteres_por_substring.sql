do $$
	declare
		s varchar;
		c varchar;
		x varchar;
		n int;
		l int;
	begin
		s := 'bruno avila';
		x := 'un';
		c := '-';
		n := 1;
		l := length(x);
	
	while (c <> x) and (c <> '') loop
		c := substring (s from n for l);
		raise notice '%', c;
		n := n + 1;
	end loop;
	
	if c = x then
		raise notice '"%" encontrado em "%"', x, s;
		else
		raise notice '"%" não encontrado em "%"', x, s;
	end if;
	
end $$;