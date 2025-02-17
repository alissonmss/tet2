do $$
declare n integer;
begin 
	select count(id_cliente)+1 into n from clientes;
	insert into clientes (id_cliente, nome)
		values (n, 'teste');
	raise notice 'O número de clientes é %.',
	n;
end $$;
