do $$
	declare
		numero integer;
		extenso varchar;
	begin
		numero := 23;
		extenso := '';
		case
			when numero between 20 and 29 then
				numero := numero - 20;
				extenso := 'vinte';
			else
				raise notice 'número fora da faixa';
		end case;
		extenso := extenso ||
		case numero
			when 1 then ' e um'
			when 2 then ' e dois'
			when 3 then ' e três'
			when 4 then ' e quatro'
			when 5 then ' e cinco'
			when 6 then ' e seis'
			when 7 then ' e sete'
			when 8 then ' e oito'
			when 9 then ' e nove'
		end case;
	raise notice '%', extenso;
end $$;