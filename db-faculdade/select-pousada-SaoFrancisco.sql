-- SQL - DQL
select * from funcionario;

select cpf, nome, datanasc, genero, estadocivil, 
	email, carteiratrab, cargahoraria, salario, chavePix
		from funcionario;
        
select cpf, nome, datanasc, genero, estadocivil, 
	chavePix, carteiratrab, cargahoraria, email, salario
		from funcionario;
        
select cpf, nome, datanasc, genero, estadocivil, 
	chavePix, carteiratrab, cargahoraria, email, salario
		from funcionario
			order by nome;    
        
select cpf, nome, datanasc, genero, estadocivil, 
	chavePix, carteiratrab, cargahoraria, email, salario
		from funcionario
			order by salario desc;         

select cpf "CPF", upper(nome) as "Funcionário", 
	date_format(datanasc, "%d/%m/%Y") "Data de Nascimento", 
    genero "Gênero", upper(estadocivil) "Estado Civil",	
    chavePix "PIX", carteiratrab "Carteira de Trabalho", 
    concat(cargahoraria, "h") "Carga Horária", email "E-mail", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário"
		from funcionario
			order by nome;


select * from dependente;

# Tratando od dados
select cpf 'CPF do Dependente', upper(nome) as 'Dependente', dataNasc 'Data de Nascimento', 
	parentesco 'Parentesco', funcionario_cpf 'CPF do Responsável' 
		from dependente
			order by nome;

# timestampdiff(year, dataNasc, now()) 'Idade' criou um novo campo/coluna para exibir a idade do dependente
select cpf 'CPF do Dependente', upper(nome) as 'Dependente', date_format(dataNasc, '%d/%m/%Y') 'Data de Nascimento', 
	timestampdiff(year, dataNasc, now()) 'Idade', (parentesco) as 'Parentesco', funcionario_cpf 'CPF do Responsável' 
		from dependente
			order by nome;
            

# Buscando nome determinado usando 'where'
select cpf 'CPF do Dependente', upper(nome) as 'Dependente', date_format(dataNasc, '%d/%m/%Y') 'Data de Nascimento', 
	timestampdiff(year, dataNasc, now()) 'Idade', (parentesco) as 'Parentesco', 
		funcionario_cpf 'CPF do Responsável' from dependente
			where nome like '%Leão'
				order by nome;
                

# Buscando parentesco apenas se for filho ou filha usando 'where'
select cpf 'CPF do Dependente', upper(nome) as 'Dependente', date_format(dataNasc, '%d/%m/%Y') 'Data de Nascimento', 
	timestampdiff(year, dataNasc, now()) 'Idade', (parentesco) as 'Parentesco', 
		funcionario_cpf 'CPF do Responsável' from dependente
			where parentesco like 'Filh%'
				order by nome;


# Buscando parentesco apenas se for filho ou filha e tenha menos de 6 anos usando 'where'
select cpf 'CPF do Dependente', upper(nome) as 'Dependente', date_format(dataNasc, '%d/%m/%Y') 'Data de Nascimento', 
	timestampdiff(year, dataNasc, now()) 'Idade', (parentesco) as 'Parentesco', 
		funcionario_cpf 'CPF do Responsável' from dependente
			where parentesco like 'Filh%'
				and  timestampdiff(year, dataNasc, now()) <= 6
					order by nome;
                    
                    
# Buscando o nome dos funcionarios responsaveis pelo dependente atráves do CPF, ainda sem fazer join 
select dep.cpf 'CPF do Dependente', upper(dep.nome) as 'Dependente', date_format(dep.dataNasc, '%d/%m/%Y') 'Data de Nascimento', 
	timestampdiff(year, dep.dataNasc, now()) 'Idade', (dep.parentesco) as 'Parentesco', 
		func.cpf 'CPF do Responsável', func.nome 'Funcionário' 
			from dependente dep, funcionario func
				where dep.parentesco like 'Filh%'
					and  timestampdiff(year, dep.dataNasc, now()) <= 6 and
						dep.funcionario_cpf = func.cpf
							order by dep.nome;

# CPF, nome, idade, gênero, estdo civil, salario, cidade, telefones, email
select upper(func.nome) 'Funcionário', func.CPF 'CPF',   
	timestampdiff(year, func.dataNasc, now()) 'Idade', 
		func.genero 'Gênero', func.estadoCivil 'Estado Civil', 
			format(func.salario, 2, 'de_DE') 'Salário (R$)',
					func.email 'E-mail',
						ende.cidade 'Cidade' ,
							group_concat(distinct tel.numero separator ', ') 'Telefone'
							from funcionario func inner join endereco ende on ende.funcionario_CPF = func.CPF
                            inner join telefone tel on tel.funcionario_cpf = func.cpf
								group by func.cpf
									order by func.nome;
				
                        

# cpf, nome , data, gravidade e descrição
select func.cpf 'CPF', func.nome 'Funcionário', date_format(oi.datahora, '%h:%i - %d/%m/%Y') 'Momento da Ocorrência', 
	upper(oi.gravidade) 'Gravidade da Ocorrência', oi.descricao 'Descrição'
	from OcorrenciaInterna oi 
		inner join funcionario func on func.cpf = oi.funcionario_cpf;
        

# data, tipo, justificaiva, cpf, nome

# coalesce -> mesmo proposito do replace

select date_format(rp.datahora, '%h:%i - %d/%m/%Y') 'Data e Hora', upper(rp.tipoes) 'Entrada / Saída',
	coalesce(rp.justificativa,'--') 'Justificativa', func.cpf 'CPF do Funcionário', upper(func.nome) 'Nome Funcionário'
		from registroponto rp inner join funcionario func on rp.funcionario_cpf = func.cpf;
                


            
	
            

        
