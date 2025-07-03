-- inserindo os dados da tabela de usuario
insert into usuario(CPF, nome, email, senha, telefone)
values
("152.289.955-33", "Lucas Ferreira", "lucas.ferreira@gmail.com", "99lf4590", "81996884459"),
("152.289.955-00", "Otávio Isack", "isakk.ferreira@gmail.com", "hrlf4590", "81996884456"),
('152.289.955-01', 'Ana Beatriz', 'ana.beatriz@gmail.com', 'ab123456', '81991234567'),
('152.289.955-02', 'Carlos Eduardo', 'carlosedu@gmail.com', 'ce654321', '81992345678'),
('152.289.955-03', 'Mariana Lima', 'mariana.lima@gmail.com', 'ml987654', '81993456789'),
('152.289.955-04', 'Felipe Rocha', 'felipe.rocha@gmail.com', 'fr111222', '81994567890'),
('152.289.955-05', 'Juliana Souza', 'juliana.souza@gmail.com', 'js333444', '81995678901'),
('152.289.955-06', 'Bruno Henrique', 'bruno.henrique@gmail.com', 'bh555666', '81996789012'),
('152.289.955-07', 'Isabela Mendes', 'isabela.m@gmail.com', 'im777888', '81997890123'),
('152.289.955-08', 'Rafael Alves', 'rafael.alves@gmail.com', 'ra999000', '81998901234'),
('152.289.955-09', 'Gabriela Duarte', 'gabidu@gmail.com', 'gd112233', '81990012345'),
('152.289.955-10', 'Lucas Silva', 'lucassilva@gmail.com', 'ls445566', '81991123456'),
('152.289.955-11', 'Pedro Henrique', 'pedro.henrique@gmail.com', 'ph778899', '81992234567'),
('152.289.955-12', 'Camila Torres', 'camila.torres@gmail.com', 'ct000111', '81993345678'),
('152.289.955-13', 'João Victor', 'joaovictor@gmail.com', 'jv222333', '81994456789'),
('152.289.955-14', 'Larissa Nunes', 'larissanunes@gmail.com', 'ln444555', '81995567890'),
('152.289.955-15', 'Matheus Oliveira', 'matheus.oliveira@gmail.com', 'mo666777', '81996678901'),
('152.289.955-16', 'Natália Castro', 'ncastro@gmail.com', 'nc888999', '81997789012'),
('152.289.955-17', 'Tiago Ramos', 'tiago.ramos@gmail.com', 'tr101112', '81998890123'),
('152.289.955-18', 'Fernanda Lima', 'fernanda.lima@gmail.com', 'fl131415', '81999901234'),
('152.289.955-19', 'Diego Almeida', 'diegoalmeida@gmail.com', 'da161718', '81990112345'),
('152.289.955-20', 'Bruna Vieira', 'bruna.vieira@gmail.com', 'bv192021', '81991223456');

select * from usuario;

-- inserindo os dados da tabela de endereco
insert into endereco (CEP, bairro, rua, numeroResidencia, complemento, usuario_CPF)
values
("51410-888", "Santo Amaro", "Rua Visconde Suassuna", 320, "Perto da coxinha de Zezo", "152.289.955-33"),
("51410-008", "Lagoa Encantada", "Rua Doutor Moacir Sales", 560, "Na rua da escola da Lagoa Encantada", "152.289.955-00"),
('50721-110', 'Madalena', 'Rua Real da Torre', 1350, 'Próximo ao mercado público', '152.289.955-01'),
('52051-000', 'Casa Amarela', 'Avenida Norte Miguel Arraes de Alencar', 8970, 'Em frente à padaria Globo', '152.289.955-02'),
('51030-030', 'Boa Viagem', 'Rua Ribeiro de Brito', 145, 'Ao lado do Edifício Atlântico', '152.289.955-03'),
('50070-280', 'Santo Antônio', 'Rua Nova', 232, 'Próximo ao Pátio do Livramento', '152.289.955-04'),
('50610-000', 'Iputinga', 'Rua Benfica', 450, 'Esquina com a Rua do Futuro', '152.289.955-05'),
('52021-180', 'Encruzilhada', 'Rua do Cupim', 223, 'Atrás do supermercado Leão', '152.289.955-06'),
('52171-011', 'Dois Irmãos', 'Rua Alto do Refúgio', 88, 'Perto do Horto de Dois Irmãos', '152.289.955-07'),
('51020-280', 'Pina', 'Rua Capitão Rebelinho', 325, 'Próximo ao Shopping RioMar', '152.289.955-08'),
('50010-000', 'Santo Amaro', 'Rua da Aurora', 90, 'Próximo ao Palácio do Governo', '152.289.955-09'),
('52041-050', 'Tamarineira', 'Rua Cônego Barata', 190, 'Fundos do Hospital da Restauração', '152.289.955-10'),
('50670-180', 'Cordeiro', 'Rua Real da Torre', 1923, 'Em frente ao Armazém Coral', '152.289.955-11'),
('50740-040', 'Afogados', 'Rua Imperial', 765, 'Ao lado da estação de metrô', '152.289.955-12'),
('52030-100', 'Rosarinho', 'Rua Padre Lemos', 305, 'Esquina com a Panificadora Rosa', '152.289.955-13'),
('51021-000', 'Boa Viagem', 'Rua Setúbal', 475, 'Atrás do Supermercado Extra', '152.289.955-14'),
('52010-240', 'Torreão', 'Rua Petrolina', 256, 'Próximo ao Hospital Agamenon Magalhães', '152.289.955-15'),
('50050-460', 'São José', 'Rua das Calçadas', 119, 'Perto da Igreja de São Pedro', '152.289.955-16'),
('50630-000', 'Torre', 'Rua José Bonifácio', 634, 'Em frente ao Colégio GGE', '152.289.955-17'),
('52111-000', 'Macaxeira', 'Rua do Parnamirim', 342, 'Próximo à entrada do terminal', '152.289.955-18'),
('51011-150', 'Boa Vista', 'Rua do Hospício', 710, 'Ao lado do Colégio Salesiano', '152.289.955-19'),
('52080-015', 'Fundão', 'Rua Bartolomeu de Gusmão', 198, 'Na rua da antiga fábrica', '152.289.955-20');

select * from endereco;

-- inserindo os dados da tabela de pontos
insert into pontos(pontos)
values
("900"),
("200"),
("10"),
("20"),
("990"),
("60"),
("900"),
("0"),
("662"),
("456"),
("500"),
("700"),
("495"),
("1200"),
("30"),
("540"),
("130"),
("270"),
("850"),
("290"),
("980"),
("1000"),
("1000");
select * from pontos;

-- inserindo os dados da tabela de tiporesiduo
insert into tiporesiduo(codMaterial)
values
(0045),
(0090),
(6767),
(5422),
(12);

desc tiporesiduo;
select  * from tiporesiduo;

-- inserindo os dados da tabela de residuo
insert into residuo (pesagem, material, usuario_CPF, tipoResiduo_idTipoResiduo)
values 
(0.800, 'Plástico', "152.289.955-18", 1 ),
(1.200, 'Ferro', '152.289.955-33', 3),
(0.450, 'Vidro', '152.289.955-01', 2),
(2.100, 'Metal', '152.289.955-01', 4),
(1.000, 'Cobre', '152.289.955-04', 5),
(3.400, 'Plástico', '152.289.955-04', 1),
(0.600, 'Ferro', '152.289.955-19', 3),
(1.800, 'Vidro', '152.289.955-05', 2),
(0.350, 'Metal', '152.289.955-05', 4),
(2.800, 'Cobre', '152.289.955-05', 5),
(0.900, 'Plástico', '152.289.955-04', 1),
(4.100, 'Ferro', '152.289.955-13', 3),
(0.500, 'Vidro', '152.289.955-05', 2),
(3.200, 'Metal', '152.289.955-33', 4),
(1.350, 'Cobre', '152.289.955-12', 5),
(2.600, 'Plástico', '152.289.955-00', 1),
(0.700, 'Ferro', '152.289.955-08', 3),
(1.500, 'Vidro', '152.289.955-03', 2),
(0.250, 'Metal', '152.289.955-08', 4),
(4.000, 'Cobre', '152.289.955-09', 5),
(0.073, 'Cobre', '152.289.955-11', 5);

select * from residuo;

-- inserindo os dados da tabela de empresa
insert into empresa (CNPJ, nomeEmpresa, numeroTelefone, email)
values
("71.673.990/0039-40", "Natura", " 08007628872", "opiniao@natura.net"),
("47.960.950/0001-21", "Magazine Luiza", "08007733838", "atendimento.magazineluiza.com.br"),
("00.776.574/0001-96", "Americanas", "0411140034848 ", "atendimento.acom@americanas.com"),
("92.754.738/0001-62", "Renner", "08007250025", "faleconosco@lojasrenner.com.br");

select * from empresa;

-- inserindo os dados da tabela de produto
insert into produto (idProduto, nomeProduto, valor, quantidade, empresa_CNPJ)
VALUES
(1 , 'Essence', 70.00, 10, '71.673.990/0039-40'),         -- Cosmético
(2 , 'Geladeira', 1200.00, 5, '47.960.950/0001-21'),      -- Eletrodoméstico
(3 , 'iPhone 20', 5600.00, 6, '00.776.574/0001-96'),      -- Eletrônico
(4 , 'Camisa Polo', 20.00, 14, '92.754.738/0001-62'),     -- Roupa
(5 , 'Perfume Kaiak', 95.00, 12, '71.673.990/0039-40'),   -- Cosmético
(6 , 'Fogão 4 bocas', 799.99, 7, '47.960.950/0001-21'),   -- Eletrodoméstico
(7 , 'Notebook Lenovo', 3100.00, 4, '00.776.574/0001-96'),-- Eletrônico
(8 , 'Jaqueta Jeans', 159.90, 10, '92.754.738/0001-62'),  -- Roupa
(9 , 'Creme Chronos', 110.50, 8, '71.673.990/0039-40'),   -- Cosmético
(10, 'Liquidificador', 249.99, 15, '47.960.950/0001-21'), -- Eletrodoméstico
(11, 'Tablet Galaxy Tab', 1250.00, 5, '00.776.574/0001-96'),-- Eletrônico
(12, 'Calça Jogger', 99.90, 13, '92.754.738/0001-62'),    -- Roupa
(13, 'Hidratante Tododia', 45.00, 20, '71.673.990/0039-40'),-- Cosmético
(14, 'Cafeteira Expresso', 399.00, 9, '47.960.950/0001-21'),-- Eletrodoméstico
(15, 'Smartwatch Fit', 499.00, 8, '00.776.574/0001-96'),  -- Eletrônico
(16, 'Camisa Social', 120.00, 6, '92.754.738/0001-62'),   -- Roupa
(17, 'Batom Faces', 29.90, 25, '71.673.990/0039-40'),     -- Cosmético
(18, 'Aspirador Vertical', 520.00, 4, '47.960.950/0001-21'),-- Eletrodoméstico
(19, 'Fone Bluetooth', 299.90, 15, '00.776.574/0001-96'), -- Eletrônico
(20, 'Vestido Floral', 180.00, 7, '92.754.738/0001-62');  -- Roupa
  
select * from produto;

-- inserindo os dados da tabela de locaisDescarte
insert into locaisDescarte(CEP,bairro, horaAbertura, horaFechamento, rua)
values
("50050-570", "Parque Treze de Maio", "07:00:00", "22:00:00", "Rua Mamede Simões"),
("50030-230", "Recife Antigo", "07:00:00", "22:00:00", "Rua Mamede Simões"),
("52171-020", "Parque Dois Irmãos ", "07:00:00", "22:00:00", "Praça Farias Neves"),
("51030-010", "Parque Dona Lindu", "05:00:00", "22:00:00", "Av. Boa Viagem")
;

select * from locaisDescarte;

-- inserindo os dados da tabela de locaisdescarte_usuario
insert into locaisdescarte_usuario (locaisdescarte_CEP, usuario_CPF)
values
('50050-570', '152.289.955-00'),
('50030-230', '152.289.955-01'),
('52171-020', '152.289.955-02'),
('51030-010', '152.289.955-03'),
('50050-570', '152.289.955-04'),
('50030-230', '152.289.955-05'),
('52171-020', '152.289.955-06'),
('51030-010', '152.289.955-07'),
('50050-570', '152.289.955-08'),
('50030-230', '152.289.955-09'),
('52171-020', '152.289.955-10'),
('51030-010', '152.289.955-11'),
('50050-570', '152.289.955-12'),
('50030-230', '152.289.955-13'),
('52171-020', '152.289.955-14'),
('51030-010', '152.289.955-15'),
('50050-570', '152.289.955-16'),
('50030-230', '152.289.955-17'),
('52171-020', '152.289.955-18'),
('51030-010', '152.289.955-19');
select * from locaisdescarte_usuario;

-- inserindo os dados da tabela de tipoProduto
insert into tipoproduto(tipoProduto, produto_idProduto, produto_empresa_CNPJ)
values
('Cosméticos', 1, '71.673.990/0039-40'),
('Eletrodomésticos', 2, '47.960.950/0001-21'),
('Eletrônicos', 3, '00.776.574/0001-96'),
('Têxtil', 4, '92.754.738/0001-62'),
('Cosméticos', 5, '71.673.990/0039-40'),
('Eletrodomésticos', 6, '47.960.950/0001-21'),
('Eletrônicos', 7, '00.776.574/0001-96'),
('Têxtil', 8, '92.754.738/0001-62'),
('Cosméticos', 9, '71.673.990/0039-40'),
('Eletrodomésticos', 10, '47.960.950/0001-21'),
('Eletrônicos', 11, '00.776.574/0001-96'),
('Têxtil', 12, '92.754.738/0001-62'),
('Cosméticos', 13, '71.673.990/0039-40'),
('Eletrodomésticos', 14, '47.960.950/0001-21'),
('Eletrônicos', 15, '00.776.574/0001-96'),
('Têxtil', 16, '92.754.738/0001-62'),
('Cosméticos', 17, '71.673.990/0039-40'),
('Eletrodomésticos', 18, '47.960.950/0001-21'),
('Eletrônicos', 19, '00.776.574/0001-96'),
('Têxtil', 20, '92.754.738/0001-62');
select * from tipoproduto;

-- inserindo os dados da tabela de usuario_produto
insert into usuario_produto (usuario_CPF, produto_idProduto, produto_empresa_CNPJ)
values
('152.289.955-00', 1, '71.673.990/0039-40'),
('152.289.955-01', 2, '47.960.950/0001-21'),
('152.289.955-02', 3, '00.776.574/0001-96'),
('152.289.955-03', 4, '92.754.738/0001-62'),
('152.289.955-04', 5, '71.673.990/0039-40'),
('152.289.955-05', 6, '47.960.950/0001-21'),
('152.289.955-06', 7, '00.776.574/0001-96'),
('152.289.955-07', 8, '92.754.738/0001-62'),
('152.289.955-08', 9, '71.673.990/0039-40'),
('152.289.955-09', 10, '47.960.950/0001-21'),
('152.289.955-10', 11, '00.776.574/0001-96'),
('152.289.955-11', 12, '92.754.738/0001-62'),
('152.289.955-12', 13, '71.673.990/0039-40'),
('152.289.955-13', 14, '47.960.950/0001-21'),
('152.289.955-14', 15, '00.776.574/0001-96'),
('152.289.955-15', 16, '92.754.738/0001-62'),
('152.289.955-16', 17, '71.673.990/0039-40'),
('152.289.955-17', 18, '47.960.950/0001-21'),
('152.289.955-18', 19, '00.776.574/0001-96'),
('152.289.955-19', 20, '92.754.738/0001-62'),
('152.289.955-20', 1, '71.673.990/0039-40'),
('152.289.955-33', 2, '47.960.950/0001-21');

select * from usuario_produto;

-- inserindo os dados da tabela pagamento
insert into pagamento (valorPago, quantidadeParcela, produto_idProduto, produto_empresa_CNPJ)
values
(0, 0, 1, '71.673.990/0039-40'),
(1200.00, 6, 2, '47.960.950/0001-21'),
(0, 0, 3, '00.776.574/0001-96'),
(0, 0, 4, '92.754.738/0001-62'),
(95.00, 2, 5, '71.673.990/0039-40'),
(0, 0, 6, '47.960.950/0001-21'),
(980.00, 10, 7, '00.776.574/0001-96'),
(0, 0, 8, '92.754.738/0001-62'),
(0, 0, 9, '71.673.990/0039-40'),
(249.99, 2, 10, '47.960.950/0001-21'),
(0, 0, 11, '00.776.574/0001-96'),
(0, 0, 12, '92.754.738/0001-62'),
(45.00, 2, 13, '71.673.990/0039-40'),
(0, 0, 14, '47.960.950/0001-21'),
(0, 0, 15, '00.776.574/0001-96'),
(120.00, 2, 16, '92.754.738/0001-62'),
(0, 0, 17, '71.673.990/0039-40'),
(520.00, 4, 18, '47.960.950/0001-21'),
(0, 0, 19, '00.776.574/0001-96'),
(0, 0, 20, '92.754.738/0001-62'),
(0, 0, 2, '47.960.950/0001-21'),
(0, 0, 5, '71.673.990/0039-40'),
(0, 0, 7, '00.776.574/0001-96'),
(0, 0, 10, '47.960.950/0001-21'),
(0, 0, 13, '71.673.990/0039-40');

select * from pagamento;

-- inserindo os dados da tabela de formapagamento
insert into formapagamento(formaPagamento, pagamento_idPagamento)
values
("PIX", 5),
("Crédito", 7),
("Débito", 13),
("Boleto", 10),
("PIX", 18),
("Boleto", 16),
("Débito", 2);

select * from formapagamento;

-- inserindo os dados da tabela de usuario_pontos
insert into usuario_pontos(usuario_CPF, pontos_idpontos)
values
('152.289.955-33', 1),
('152.289.955-00', 2),
('152.289.955-01', 3),
('152.289.955-02', 4),
('152.289.955-03', 5),
('152.289.955-04', 6),
('152.289.955-05', 7),
('152.289.955-06', 8),
('152.289.955-07', 9),
('152.289.955-08', 10),
('152.289.955-09', 11),
('152.289.955-10', 12),
('152.289.955-11', 13),
('152.289.955-12', 14),
('152.289.955-13', 15),
('152.289.955-14', 16),
('152.289.955-15', 17),
('152.289.955-16', 18),
('152.289.955-17', 19),
('152.289.955-18', 20),
('152.289.955-19', 21),
('152.289.955-20', 22),
('152.289.955-01', 23);

select * from usuario_pontos;

