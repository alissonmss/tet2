do $$
	declare
		numero integer;
		extenso varchar;
	begin
		numero := 0;
		extenso :=
			case numero
				when 0 then 'zero'
				when 10 then 'dez'
				when 11 then 'onze'
				when 12 then 'doze'
				when 13 then 'treze'
				when 14 then 'catorze'
				when 15 then 'quinze'
				when 16 then 'dezesseis'
				when 17 then 'dezessete'
				when 18 then 'dezoito'
				when 19 then 'dezenove'
				when 100 then 'cem'
				else ''
			end;

		extenso := extenso ||
			case 
				when numero between 20 and 29 then 'vinte'
				when numero between 30 and 39 then 'trinta'
				when numero between 40 and 49 then 'quarenta'
				when numero between 50 and 59 then 'cinquenta'
				when numero between 60 and 69 then 'sessenta'
				when numero between 70 and 79 then 'setenta'
				when numero between 80 and 89 then 'oitenta'
				when numero between 90 and 99 then 'noventa'
				else ''
			end case;

		if numero >= 20 and numero <= 99 then
			numero := numero % 10;
			if numero > 0 then
			extenso := extenso || ' e ';
			end if;
		else
		end if;

		extenso := extenso ||
			case numero
				when 1 then 'um'
				when 2 then 'dois'
				when 3 then 'três'
				when 4 then 'quatro'
				when 5 then 'cinco'
				when 6 then 'seis'
				when 7 then 'sete'
				when 8 then 'oito'
				when 9 then 'nove'
			else ''
			end;

	raise notice '%', extenso;
end $$;