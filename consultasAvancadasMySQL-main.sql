#Questão 1
#Selecione os campos nome, de_ferias e bairro a partir da tabela de vendedores.
#Em seguida, selecione a vendedora com o nome de ‘Cláudia Morais’, cujo bairro é ‘Jardins’. 
#Ela está de férias?

select BAIRRO, NOME, DE_FERIAS from tabela_de_vendedores;

select * from tabela_de_vendedores where BAIRRO = 'Jardins' and NOME = 'Cláudia Morais';

#Qustão 2
#A partir da tabela de vendedores, 
#selecione a pessoa que possui comissão acima de 0.10 e que está de férias.

select * from tabela_de_vendedores where PERCENTUAL_COMISSAO > 0.10 AND DE_FERIAS = '1';

#Questão 3
#Realize uma consulta na tabela de notas fiscais, identificando o número de matrícula 00237 ou 
#a data de venda do dia 12-01-2015. 
#Por que o CPF desta tabela não é uma chave primária (PK)?

SELECT * FROM notas_fiscais where MATRICULA = '00237' or DATA_VENDA = '2015-01-12';

SELECT * FROM notas_fiscais;

#Questão 4
#Na tabela dos itens das notas fiscais, 
#selecione o código do produto e a quantidade vendida dos itens que possuam quantidade de venda 
#igual ou maior do que 99. 
#Qual ou quais itens representam o maior valor de venda?

SELECT CODIGO_DO_PRODUTO, QUANTIDADE FROM itens_notas_fiscais where QUANTIDADE >= '99';

SELECT * FROM itens_notas_fiscais;

#Quetão 5
#Quem é o cliente que comprou 84 produtos com o número de código igual a 1101035, 
#cujo número da nota fiscal foi 102? Quem foi o vendedor ou vendedora responsável 
#e qual o nome do produto e seu sabor? 
#Gere o Diagrama de Entidade - Relacionamento para melhor compreensão.

select * from tabela_de_produtos WHERE CODIGO_DO_PRODUTO = 1101035;
select * from tabela_de_clientes WHERE CPF = 8502682733;
select * from tabela_de_vendedores where matricula = 00236;
select * from itens_notas_fiscais WHERE numero = 102 AND quantidade = 84;
select * from notas_fiscais WHERE numero = 102;