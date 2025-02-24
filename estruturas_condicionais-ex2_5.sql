do $$
	declare
		senha varchar;
	begin
		senha := 'AC123';

		if senha = 'AC12' then
			raise notice 'Senha correta';
		else
			raise notice 'Senha errada';
		end if;
end $$;