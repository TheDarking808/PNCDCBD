use sucos_vendas;

select * from tabela_de_clientes;

select CPF, NOME from tabela_de_clientes; 

select * from tabela_de_clientes where CPF = '15416845699';

select * from tabela_de_clientes where NOME = 'paulo';

select * from tabela_de_produtos;
select * from tabela_de_produtos where PRECO_DE_LISTA > 8.41;

select * from tabela_de_produtos where PRECO_DE_LISTA between 8.40 AND 8.42;

SELECT * FROM tabela_de_produtos where sabor = 'manga' or tamanho = '350ml';
select * from tabela_de_produtos where sabor = 'manga' and TAMANHO = '350ml';

select * from tabela_de_produtos where not SABOR = 'manga' and tamanho = '350ml';
select * from tabela_de_produtos where not SABOR = 'manga' or tamanho = '350ml';