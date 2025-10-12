use petshop;
#  relatório 01  - ordenado por  data de  admissão deforma  decrescente
	select empregado.nome 'Empregado', 
		empregado.cpf 'CPF do Empregado',  
			date_format(empregado.dataAdm, '%d /%m /%Y')'Data de Admissão', 
				concat('R$ ', format(empregado.salario, 2,  'de_DE')) 'Salário', 
						departamento.nome 'Nome do Departamento',
							telefone.numero  'Contato'
			from empregado as empregado
			left join departamento as departamento on departamento.idDepartamento = empregado.Departamento_idDepartamento
            left join telefone as telefone on telefone.Empregado_cpf = empregado.cpf
            where dataAdm between '2019-01-01' and '2022-03-31'
				order by dataAdm  desc;

# relatório 02 - ordenado por empregador que ganham menos que a média salarial
select empregado.nome 'Empregado', 
		empregado.cpf 'CPF do Empregado',  
			date_format(empregado.dataAdm, '%d /%m /%Y')'Data de Admissão', 
				concat('R$ ', format(empregado.salario, 2,  'de_DE')) 'Salário', 
					#empregado.Departamento_idDepartamento 'Departamento',
						departamento.nome 'Nome do Departamento',
							telefone.numero  'Contato'
			from empregado as empregado
			left join departamento as departamento on departamento.idDepartamento = empregado.Departamento_idDepartamento
            left join telefone as telefone on telefone.Empregado_cpf = empregado.cpf
            where empregado.salario < 3360
            order by empregado.nome;


# relatório 03 - qtd total de empregados por departamento, junto com média de salário e média de comissão
select departamento.nome 'Nome Departamento',
	#empregado.nome 'Empregado'
		count(departamento.idDepartamento) 'Total de Empregados',
			concat('R$ ', format(avg(empregado.salario), 2,  'de_DE')) 'Média Salarial',
				concat('R$ ', format(avg(empregado.comissao), 2, 'de_DE')) 'Média de Comissão'
	from departamento as departamento
    left join empregado as empregado on empregado.Departamento_idDepartamento = departamento.idDepartamento
    group by departamento.nome
    order by departamento.nome;

# relatório 04 - lista de empregados com qtd total de vendas já realizadas por cada um, além da soma do valor total das vendas + valor total da comissão
select empregado.nome 'Nome do Empregado',
	empregado.cpf 'CPF',
		empregado.sexo 'Gênero',
			concat('R$ ', format(empregado.salario, 2, 'de_DE')) 'Salário',
				count(venda.valor) 'Quantidade de Vendas',
					concat('R$ ', format(sum(venda.valor), 2, 'de_DE')) 'Total Vendido',
						concat('R$ ', format(sum(venda.comissao), 2, 'de_DE')) 'Total de Comissão'
    from empregado as empregado
    left join venda as venda on venda.Empregado_cpf = empregado.cpf
    group by empregado.nome
    order by 'Quantidade de Vendas';

# relatório 05 - empregados que prestam serviço, com qtd total de vendas realizadas, soma dos valores de comissão
select empregado.nome  'Nome Empregado',
	empregado.cpf 'CPF',
		empregado.sexo 'Sexo',
			concat('R$ ', (format(empregado.salario, 2, 'de_DE'))) 'Salário',
				count(DISTINCT isv.Venda_idVenda) 'Quantidade de Vendas com Serviço',
					concat('R$ ', format(sum(isv.valor), 2, 'de_DE')) 'Valor Total de Vendas',
						concat('R$ ', format(sum(v.comissao), 2, 'de_DE')) 'Total Comissão'
	from empregado 
	join itensservico isv on empregado.cpf = isv.Empregado_cpf
	join venda v on v.idVenda = isv.Venda_idVenda
	group by empregado.cpf
	order by count(distinct isv.Venda_idVenda) desc;


# relatório 06 - lista de serviços mais realizados por pets
select pet.nome 'Pet',
	date_format(venda.data, '%d/%m/%Y') 'Data do Serviço',
		servico.nome 'Serviço',
			itensservico.quantidade 'Quantidade',
				concat('R$' ,format(itensservico.valor, 2, 'de_DE')) 'Valor',
					empregado.nome 'Empregado Responsável'
	from itensservico
    join pet on pet.idpet = itensservico.pet_idpet
	join servico on servico.idservico = itensservico.servico_idservico
    join venda on venda.idvenda = itensservico.venda_idvenda
    join empregado on  empregado.cpf = itensservico.empregado_cpf
	order by venda.data desc
    ;
	

# relatório 07 -  lista das vendas já realizados para um Cliente
#https://www.datacamp.com/pt/doc/mysql/mysql-date-format
select date_format(venda.data, '%d/%m/%Y')'Data da venda',
	concat('R$ ', format(venda.valor, 2, 'de_DE'))'Valor',
		concat('R$ ', format(venda.desconto, 2, 'de_DE')) 'Desconto da Venda',
			concat('R$ ', format(((venda.valor) - (venda.desconto)), 2, 'de_DE')) 'Valor Final',
				empregado.nome 'Responsável Venda'
from venda as venda
left join empregado as empregado on venda.Empregado_cpf = empregado.cpf
order by venda.data desc;


# relatório 08 - 10 serviços mais vendidos, com qtd de vendas de cada serviço, soma total dos valores de serviços vendidos
select servico.nome 'Nome do Serviço',
        count(itensservico.quantidade) 'Quantidade de Vendas',
			concat('R$ ' ,format(((servico.valorVenda) * count(itensservico.quantidade)), 2, 'de_DE')) 'Total Vendido'
	from servico as servico
	left join itensservico on itensservico.Servico_idServico = servico.idServico 
	group by servico.nome;
	select * from servico;


# relatório 09 - lista de formas de pagamento mais utilizadas nas vendas, com qtd de vendas que cada forma de pag foi relacionada
select f.tipo 'Tipo Forma Pagamento',
    count(f.Venda_idVenda) 'Quantidade Vendas',
		concat('R$ ', format(sum(f.valorPago), 2, 'de_DE')) 'Total Valor Vendido'
	from formapgvenda f
	group by f.tipo
	order by count(f.Venda_idVenda) desc;

# relatório 10 - balanço das vendas
select date_format(venda.data, '%d/%m/%Y') 'Data Venda',
    count(venda.idVenda) 'Quantidade de Vendas',
		concat('R$ ', format(sum(venda.valor), 2, 'de_DE')) 'Valor Total Venda'
	from venda 
	group by (venda.data)
	order by (venda.data) DESC;


# relatório 11 - lista de produtos, informando fornecedor de cada produto
select prod.nome 'Nome Produto',
    format(prod.valorVenda, 2, 'de_DE') 'Valor Produto',
		prod.marca'Categoria do Produto',
			fornecedor.nome 'Nome Fornecedor',
				fornecedor.email 'Email Fornecedor',
					tel.numero 'Telefone Fornecedor'
	from produtos prod
	join itenscompra ic on ic.Produtos_idProduto = prod.idProduto
	join compras c on c.idCompra = ic.Compras_idCompra
	join fornecedor on fornecedor.cpf_cnpj = c.Fornecedor_cpf_cnpj
	left join telefone tel on tel.Fornecedor_cpf_cnpj = fornecedor.cpf_cnpj
	group by prod.idProduto, fornecedor.cpf_cnpj
order by prod.nome;


# relatório 12 - produtos mais vendidos
select prod.nome 'Nome Produto',
    concat('R$ ', (format(sum(itensvendaprod.quantidade), 2, 'de_DE'))) 'Quantidade (Total) Vendas',
		concat('R$ ',format(sum(itensvendaprod.valor), 2, 'de_DE')) 'Total Recebido'
from itensvendaprod 
join produtos prod ON prod.idProduto = itensvendaprod.Produto_idProduto
group by prod.idProduto
order by sum(itensvendaprod.quantidade) desc;





    
