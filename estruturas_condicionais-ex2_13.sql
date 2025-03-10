do $$
	declare
		idade integer;
		cond_voto varchar;
	begin
		idade := 18;
		cond_voto :=
			case
				when idade between 16 and 17 then 'Voto opcional'
				when idade between 18 and 70 then 'Voto obrigatório'
				when idade >= 71 then 'Voto opcional'
				else 'Idade inválida.'
			end case;
	raise notice '%', cond_voto;
end $$;