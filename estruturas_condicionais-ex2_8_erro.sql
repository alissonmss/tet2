do $$
	declare
		compra numeric;
		avista numeric;
		cheque numeric;
		parce3 numeric;
		parce6 numeric;
		parce12 numeric;
		opcao varchar;
	begin
		compra := 1000.00;
		opcao := avista;
		avista := compra * 0.85;
		cheque := compra * 0.90;
		parce3 := compra * 0.95;
		parce6 := compra;
		parce12 := compra * 1.08;
		case opcao
			when avista then avista
			when cheque then cheque
			when parce3 then '3x de ' || (parce3) % 3 ||  'Valor total: ' || parce3
			when parce6 then '6x de ' || (parce6) % 6 ||  'Valor total: ' || parce6
			when parce12 then '12x de ' || (parce12) % 12 ||  'Valor total: ' || parce12
			else opcao
		end case;
	raise notice '%', opcao;
end $$;