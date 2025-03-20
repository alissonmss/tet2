do $$
	declare
		livroA numeric;
		livroB numeric;
		fixoA numeric;
		fixoB numeric;
		livros integer;
	begin
		livroA := 0.25;
		livroB := 0.50;
		fixoA := 7.50;
		fixoB := 2.50;
		livros := 20;

		if (livros * livroA) + fixoA > (livros * livroB) + fixoB then
			raise notice 'Melhor opção: A';
		elsif (livros * livroA) + fixoA < (livros * livroB) + fixoB then
			raise notice 'Melhor opção: B';
		else
			raise notice 'Melhor opção: A ou B saem pelo mesmo valor';
		end if;
end $$;