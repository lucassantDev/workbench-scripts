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

# descobrinco a  média salarial dos empregado referente ao relatório 02
select format(avg(empregado.salario), 2, 'de_DE') 'Média Salarial' from empregado;

# relatório 03 - qtd total de empregados por departamento, junto com média de salário e média de comissão
select departamento.nome 'Nome Departamento',
	#empregado.nome 'Empregado'
		count(departamento.idDepartamento) 'Total de Empregados',
			concat('R$ ', format(avg(empregado.salario), 2,  'de_DE')) 'Média Salarial',
				concat('R$ ', format(avg(empregado.comissao), 2, 'de_DE')) 'Média de Comissão'
	from departamento as departamento
    left join empregado as empregado on empregado.Departamento_idDepartamento = departamento.idDepartamento
    group by departamento.nome;

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
    group by
		empregado.nome
    order by 'Quantidade de Vendas';


# relatório 06 - lista de serviços mais realizados por pets

	

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





    
