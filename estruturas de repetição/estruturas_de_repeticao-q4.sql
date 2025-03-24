do $$
	declare
		n integer;
		a integer;
		b integer;
		c integer;
		f integer;
	begin
		a := 0;
		b := 1;
		c := 2;
		for n in 1..70 loop
			f := a + b + c;
		raise notice '%', f;
			a := b;
			b := c;
			c := f;
		end loop;
end $$;