use petshop;

#  relatório 01  - ordenado por datAdmissão de forma decrescente
	select empregado.nome 'Empregado', 
		empregado.cpf 'CPF do Empregado',  
			date_format(empregado.dataAdm, '%d /%m /%Y')'Data de Admissão', 
				concat('R$ ', format(empregado.salario, 2,  'de_DE')) 'Salário', 
					#empregado.Departamento_idDepartamento 'Departamento',
						departamento.nome 'Nome do Departamento',
							telefone.numero  'Contato'
			from empregado as empregado
			left join departamento as departamento on departamento.idDepartamento = empregado.Departamento_idDepartamento
            left join telefone as telefone on telefone.Departamento_idDepartamento = departamento.idDepartamento
			order by empregado.dataAdm  desc;

# relatório 02 - ordenado por empregados que ganham menos que a média salarial
select empregado.nome 'Empregado', 
		empregado.cpf 'CPF do Empregado',  
			date_format(empregado.dataAdm, '%d /%m /%Y')'Data de Admissão', 
				concat('R$ ', format(empregado.salario, 2,  'de_DE')) 'Salário', 
					#empregado.Departamento_idDepartamento 'Departamento',
						departamento.nome 'Nome do Departamento',
							telefone.numero  'Contato'
			from empregado as empregado
			left join departamento as departamento on departamento.idDepartamento = empregado.Departamento_idDepartamento
            left join telefone as telefone on telefone.Departamento_idDepartamento = departamento.idDepartamento
            where empregado.salario < 3360;

# descobrindo a média salarial dos empregados referente ao relatório 02
select format(avg(empregado.salario), 2, 'de_DE') 'Média Salarial' from empregado;
