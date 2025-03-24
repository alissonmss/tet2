do $$
declare
	r record;
	n int;
begin
	n := 0;
	
	-- cabeçalho
	raise notice '-------------------------------------------------';
	raise notice '|  ID  |         TÍTULO          | FAIXA ETÁRIA |';
	raise notice '-------------------------------------------------';

	-- registros
	for r in
		select 
			format('%-4s', id_objeto) as id_objeto,
			format('%-23s', titulo) as titulo,
			format('%-12s', indicacao_faixa_etaria_inicio) as faixa_etaria
		from public.objetos
		limit 5
	loop
		raise notice '| % | % | % |', r.id_objeto, r.titulo, r.faixa_etaria;
		raise notice '-------------------------------------------------';
		n := n + 1;
	end loop;

	-- rodapé
	raise notice 'Total de registros impressos: %', n;
end $$;
