
-- 1 - alterando e-mail do usuário
update usuario
set email = 'lucasfa@gmail.com'
where CPF = '152.289.955-33';

select * from usuario;

-- 2 - alterando complemento do endereço
update endereco
set complemento = 'Próximo ao terminal de ônibus'
where usuario_CPF = '152.289.955-00';

-- 3 - alterando a pesagem do residuo
update residuo
set pesagem = 3.800
where idResiduo = 10;

-- 4 - atualizando telefone da Natura
update empresa
set numeroTelefone = '08007778888'
where CNPJ = '71.673.990/0039-40';

-- 5 - atualizando bairro do endereço
update endereco
set bairro = 'Boa Vista'
where usuario_cpf = '152.289.955-01';

-- 6 - corrigindo material de resíduo
update residuo
set material = 'Papelão'
where idresiduo = 4;

-- 7 - ajustando pontos de um registro
update pontos
set pontos = '750'
where idpontos = 14;

-- 8 - atualizando nome da empresa renner
update empresa
set nomeempresa = 'Lojas Renner S.A.'
where CNPJ = '92.754.738/0001-62';

-- 9 - corrigindo nome do produto
update produto
set nomeproduto = 'Notebook Lenovo i7'
where idproduto = 7 and empresa_cnpj = '00.776.574/0001-96';

-- 10 - corrigindo rua do local de descarte
update locaisdescarte
set rua = 'Rua do Bom Jesus'
where CEP = '50030-230';

-- 11 - atualizando nome do usuário
update usuario
set nome = 'Lucas F. Andrade'
where CPF = '152.289.955-33';

-- comandos para deletar alguns dados

-- 12 - deletando um usuário específico
delete from usuario where CPF = '152.289.955-03';

-- 13 - deletando um produto da empresa Natura
delete from produto where idProduto = 1 and empresa_CNPJ = '71.673.990/0039-40';

-- 14 - deletando um ponto com id específico
delete from pontos where idpontos = 3;

-- 15 - deletando um tipo de resíduo pelo código
delete from tiporesiduo where idTipoResiduo = 4;

-- 16 - deletando um endereço associado a um cpf
delete from endereco where usuario_CPF = '152.289.955-05';

-- 17 - deletando um registro de resíduo por id
delete from residuo where idResiduo = 15;

-- 18 - deletando a empresa Magazine Luiza
delete from empresa where CNPJ = '47.960.950/0001-21';

-- 19 - deletando um local de descarte específico
delete from locaisDescarte where CEP = '52171-020';

-- 20 - deletando usuário com cpf
delete from usuario where CPF = '152.289.955-12';