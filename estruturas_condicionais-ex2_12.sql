do $$
	declare
		idade integer;
		categoria varchar;
	begin
		idade := 1;
		categoria :=
			case
				when idade between 1 and 13 then 'Infantil'
				when idade between 14 and 17 then 'Juvenil'
				when idade between 18 and 120 then 'Sênior'
				else 'idade inválida.'
			end case;
	raise notice '%', categoria;
end $$;