do $$
	declare
		peso numeric;
		altura numeric;
		sexo varchar;
		pesoideal numeric;
		resultado_pesoideal varchar;

	begin
		peso := 60.87;
		altura := 1.70;
		sexo := 'feminino';
		
		if sexo = 'masculino' then pesoideal = (72.7 * altura) - 58;
		else
			pesoideal = (62.1 * altura) - 44.7;
		end if;
		
		resultado_pesoideal :=
			case 
				when peso > pesoideal then 'acima do peso ideal'
				when peso < pesoideal then 'abaixo do peso ideal'
				else 'está no peso ideal'
			end case;

		raise notice '%', resultado_pesoideal;

end $$;