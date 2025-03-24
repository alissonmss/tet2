do $$
declare
	r record;
begin
	raise notice '-------------------------------------------------';
	raise notice '|  ID  |         TÍTULO          | FAIXA ETÁRIA |';
	raise notice '-------------------------------------------------';
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
	end loop;
		/*select
			id_objeto, count(*) as quantidade
			from public.objetos
			group by id_objeto;*/
		raise notice 'Total de registros impressos: %', count(r.id_objeto) group by (r.id_objeto);
end $$;