use petshop;

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

    
    
