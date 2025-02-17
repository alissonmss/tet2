-- 1) Dado um número, escreva se o número é positivo, negativo ou zero.

do $$
declare
	id_cliente integer;
begin
	id_cliente := 0;
	if id_cliente > 0 then
		raise notice 'Número é positivo';
	elsif id_cliente < 0 then
		raise notice 'Número é negativo';
	else
		raise notice 'Número igual a zero';
	end if;
end $$;

-- 2) Dadas três notas de um certo aluno, teterminar se ele foi aprovado ou não.

do $$
declare
	nota1 numeric;
	nota2 numeric;
	nota3 numeric;
	nota4 numeric;
begin
	nota := 7; --fazer: calcular a media
	if nota >= 7 then
		raise notice 'Aprovado';
	elsif nota < 3 then
		raise notice 'Reprovado';
	else
		raise notice 'Em prova final';
	end if;
end $$;

-- 3) Se o número de clientes for maior que 1000, então enviar notificação para o gerente parabenizando-o; caso contrário, notifique-o da meta a ser cumprida

do $$
declare
	id_cliente integer;
begin
	select count(*) into n from clientes;
	if n >= 1000 then
		raise notice 'Parabéns! A meta de 1000 clientes foi atingida!';
	elsif id_cliente < 1000 then
		raise notice 'A meta de 1000 clientes continua em progresso.';
	else
		raise notice 'Em prova final';
	end if;
end $$;

-- Extra: se com insert

do $$

declare
	v_id_cliente integer;

begin

--	seleciona o maior id_cliente, soma mais 1 e atribui a v_id_cliente
	select max(id_cliente)+1 into v_id_cliente from clientes;
	
--	insere novo registro em clientes
	insert into clientes values (v_id_cliente, 'teste');
	
-- se maior ou igual 1000, então "meta cumprida"
	if max(v_id_cliente) >= 1000 and max(v_id_cliente) <= 1099 then
		raise notice 'Parabéns! A meta de 1000 clientes foi atingida!';

-- se menor que 1000, então "meta em progresso"
	elsif v_id_cliente < 1000 then
		raise notice 'A meta de 1000 clientes está em progresso.';

-- se maior ou igual a 1100, então "nova meta"
	else
		raise notice 'Nova meta atribuida: 1500 clientes';

	end if;
end $$;

-- Extra versão menor:

do $$

declare
	v_id_cliente integer;

begin

--	seleciona o maior id_cliente, soma mais 1 e atribui a v_id_cliente
	select max(id_cliente)+1 into v_id_cliente from clientes;
	
--	insere novo registro em clientes
	insert into clientes values (v_id_cliente, 'teste');
	
-- se maior ou igual 20 e menor ou igual a 29, então "meta cumprida"
	if max(v_id_cliente) >= 20 and max(v_id_cliente) <= 29 then
		raise notice 'Parabéns! A meta de 20 clientes foi atingida!';

-- se menor que 20, então "meta em progresso"
	elsif v_id_cliente < 20 then
		raise notice 'A meta de 20 clientes está em progresso.';

-- se maior ou igual 30, então "nova meta"
	else
		raise notice 'Nova meta atribuida: 50 clientes';

	end if;
end $$;
