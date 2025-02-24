do $$
	declare
		idade integer;
		categoria varchar;
	begin
		idade := 20;
		categoria := categoria ||
		case idade
			when 13 then 'Infantil'
			when between 14 and 17 then 'Juvenil'
			when 18 then 'Sênior'
			else ''
		end case;
	raise notice '%', categoria;
end $$;