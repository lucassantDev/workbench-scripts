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
                


            
	
            

        