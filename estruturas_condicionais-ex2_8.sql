do $$
	declare
		preco numeric(7,2);
		condicao varchar;
		precofinal numeric(7,2);
		parcelamento numeric(7,2);
		diferenca numeric(7,2);
		desconto varchar;
		parcelas int;
	
	begin
		preco := 1000.00;
		condicao := 'parce12';
		precofinal := 
			case condicao
				when 'avista' then preco * 0.85
				when 'cheque' then preco * 0.90
				when 'parce3' then preco * 0.95
				when 'parce6' then preco
				when 'parce12' then preco * 1.08
			end case;
			
		parcelas :=
			case condicao
				when 'avista' then 1
				when 'cheque' then 1
				when 'parce3' then 3
				when 'parce6' then 6
				when 'parce12' then 12
			end case;
			
		parcelamento := precofinal / parcelas;
		
		diferenca := precofinal - preco;
		
		desconto :=
			case
				when precofinal <= preco then 'Desconto de:'
				when precofinal > preco then 'Juros de:'
			end case;
		
		raise notice 'Valor da compra: %', preco;
		raise notice 'Valor final da compra: %', precofinal;
		raise notice 'Parcelamento: %x de %', parcelas, parcelamento;
		raise notice 'Diferença: %' , diferenca;
		raise notice '% % porcento', desconto, (((precofinal / preco)-1)*100)::numeric(7,2);
end $$;
	