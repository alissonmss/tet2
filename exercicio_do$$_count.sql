do $$
declare n integer;
begin 
	select count(id_cliente)+1 into n from clientes;
	insert into clientes (id_cliente, nome)
		values (n, 'teste');
	raise notice 'O número de clientes é %.',
	n;
end $$;

--- resposta (incompleto)

do $$
declare
	v_id_cliente int;
	v_nome varchar(20);
begin
	select max(id_cliente) into v_id_cliente from clientes;
