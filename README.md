# AULA 1 👨🏻‍💻
<p>Foi passada uma revisão da materia e destacando a importancia da materia de Modelagem de banco de dados. Partindo de exemplos sobre como o processo de modelagem pode acarretar em erros no futuro.
<br><br>
Em primeiro momento temos que identificar as entidades aonde os dados serão guardados, após isso devemos identificar os atributos. Dentro do modelo conceitual devemos identificar o ID unico que é um candidato a chave primaria, dentro de um modelo conceitual não existe chave primaria.
<br><br>
<b>Foi passado um trabalho em grupo no AVA dividido em 15 pessoas.</b> para a proxima semana, ele vai ter que ser feito em uma apresentação de slide.</p>

# AULA 3 👨🏻‍💻
<p>Regras para se trabalhar em um banco de dados, o primeiro problema ao fazer uma mudança e mudar o banco de dados, a forma correta é usar o alter do ddn o create cria, o alter altera e o "outro". deleta.
<br><br>
DEFAULT: serve para colocar que um valor se inicia no zero.<br>Quando uma tabela for ter nome use como regra começar com letra maiuscula e caso seja composta iniciar as Duas palavras com letra maiuscula como por exemplo. Se uma tabela for: Cliente.
<br><br>
Ao fazer alguns campos tem que ficar muito alerta para ver se ele tem o atributo certo, por exemplo uma placa de um carro tem que ser Unico.
<br><br>
Ao for colocar algo que é passivel a negociação ele tem que começar com um valor default afinal ele pode ser alterado.
<br><br>
Ao fazer um ano de fabricação é bom usar Int ao inves de Date porque dentro do SQL é necessario pesquisar ano, mes e data e isso não é importante para a busca.
<br><br>
A função check serve para "checar" caso uma regra de por exemplo uma loja que vende carros apenas aceita de um ano inteiro.
<br><br>
Como fazer uma tabela se relacionar com outra dentro de uma IDE para rodar no banco de dados. Tem que ter três coisas primeiramente, 1º criar os atributos dentro da tabela para receber a chave estrangeira. O nome dentro da chave pode ser qualquer um mas autores gostam de repetir o nome ou inverter a forma que foi nomeado para fins de identificação. O nome pode ser diferente mas o tipo dentro da tabela de origem e da estrangeira devem ser o mesmo. Apenas um que não é necessario que é o autoincrement e não deve ser colocada dentro de uma estrangeira. o Dominio e as intruções devem ser iguais.
<br><br>
Como fazer para uma tabela identificar que aquilo que está dentro dela é uma chave estrangeira? Existem duas formas de fazer, uma que é simples e a outra que é complicada. No momento vamos fazer o modelo que é mais complicato para aprendermos a criar uma <B>"constraint"</B> o nome que vou inserir é <B>FK_Cliente_Venda</B>. para definir que ela é vou usar <B>foreign key id_cliente</B>
<br><br>
A declaração Alter modifica um objeto existente do banco de dados. Para adicionar uma nova tabela podemos utilizar:<br><br>
ALTER TABLE Clientes<br>
ADD COLUMN Telefone VARCHAR(15)<br>
Dentro do workbench vai ser adicionada uma nova tabela.<br><br>
Caso eu queria modificar algo eu posso fazer isso:<br><br>
ALTER TABLE Clientes<br>
MODIFY "escolher o certo" "definir o novo"<br>
Para deletar algo posso fazer um:<br><br>
Alter Table Clientes<br>
drop column Ativo.

# AULA 4 👨🏻‍💻

DML - data manipulation language. Linguagem de manipulação de dados.<br><br>

São comandos DML. INSERT, DELETE E UPDATE.<br>
Para fazer a estrutura usamos os comandos de DDL.<br>
Como se faz para fazer consultas para fazer as DQL.<br><br>

A diferentaça entre o comando ALTER e UPDATE é que o (alter) é usado para alterar a estrutura de dados e o (updtate) é utilizado para alterar os registros.<br><br>

para selecionar uma coluna de uma tabala dentro do SQL usamos dentro do SELECT fazemos o seguinte uso de [.] como por exemplo<br><br>

<b>SELECT<br>
<b>Veiculo.marca<b>, Venda.valorVenda,<br>
<b>Cliente.nome<b> AS  nome_cliente,<br>
Funcionario.nome AS nome_cliente,<b> o "AS" é utilizado para dentro desta busca ele receber um apelido para exibição e conseguir exibir pois neste caso sem o AS ele exibiria duas tabelas com nomeada de "nome".<br>
FROM Veiculo<br>
<b>INNER JOIN<b> Venda <b>ON<b> Veiculo.idVeiculo = Venda.idVeiculo<br>
INNER JOIN Cliente ON Venda.idCliente = Cliente.idCliente<br>
INNER JOIN Funcionario ON Venda.idFuncionario = Funcionario.id_Funcionario
WHERE Venda.data_venda > '2024-09-01;
</p>
