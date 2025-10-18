-- adicionando uma nova coluna
alter table usuario add column data_nascimento date;

-- renomeando uma coluna
alter table usuario rename column nome to nome_completo;

-- mudando o tipo da coluna
alter table produto modify column valor decimal(10,2);

-- aumentando a quantidade de caracteres na coluna complemento
alter table endereco modify complemento varchar(120);

-- utilizando o modify para mudar o tamanho do varchar
alter table empresa modify email VARCHAR(100);

-- apagar coluna de complemento na tabela de endereco
alter table endereco drop column complemento;

-- modificando a tabela de telefone para que possa ser opcional
alter table usuario modify telefone VARCHAR(13) NULL;

-- renomeandoa tabela tipoResiduo
alter table tipoResiduo rename to tipo_residuo;

-- fazendo com que o email seja unico
alter table usuario add unique (email);

-- mudando nome da tabela nomeProduto para descricaoProduto
alter table produto change nomeProduto descricaoProduto VARCHAR(60) NOT NULL;



