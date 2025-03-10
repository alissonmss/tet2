do $$
	declare
		numero integer;
		extenso varchar;
	begin
		numero := 20;
		extenso := '';

		case
			when numero between 20 and 29 then
				extenso := 'vinte';
				numero := numero - 20;
			when numero between 30 and 39 then
				extenso := 'trinta';
				numero := numero - 30;
			when numero between 40 and 49 then
				extenso := 'quarenta';
				numero := numero - 40;
			when numero between 50 and 59 then
				extenso := 'cinquenta';
				numero := numero - 50;
			when numero between 60 and 69 then
				extenso := 'sessenta';
				numero := numero - 60;
			when numero between 70 and 79 then
				extenso := 'setenta';
				numero := numero - 70;
			when numero between 80 and 89 then
				extenso := 'oitenta';
				numero := numero - 80;
			when numero between 90 and 99 then
				extenso := 'noventa';
				numero := numero - 90;
			else
		end case;

		case
		when numero between 20 and 99 then
			if numero % 10 > 0 then
			extenso := extenso || ' e ';
			end if;
		else
		end case;

		extenso := extenso ||
		case numero
			when 0 then ''
			when 1 then 'um'
			when 2 then 'dois'
			when 3 then 'três'
			when 4 then 'quatro'
			when 5 then 'cinco'
			when 6 then 'seis'
			when 7 then 'sete'
			when 8 then 'oito'
			when 9 then 'nove'
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
			else 'número fora da faixa.'
		end;
	raise notice '%', extenso;
end $$;