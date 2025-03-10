do $$
	declare
		folhas_quantidade int;
		folhas_preco numeric;
		preco_final numeric;
	begin
		folhas_quantidade := 101;
		folhas_preco :=
			case
				when folhas_quantidade 
					between 1 and 100
					then 0.25
				else 0.20
			end case;
		preco_final := folhas_quantidade * folhas_preco;

		raise notice '%', preco_final;

end $$;