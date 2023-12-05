Documentação da Base de Dados
Este repositório contém a definição e criação de uma base de dados SQL para o gerenciamento de informações sobre vendedores, barcos e suas reservas. A seguir, são fornecidas informações detalhadas sobre a estrutura da base de dados, as tabelas envolvidas e algumas inserções de dados de exemplo.

Tabelas
1. Tabela vendedores
Descrição: Armazena informações sobre os vendedores.

Campos:

idVend (INT): Identificador único do vendedor (Chave Primária).
nomeVend (VARCHAR(255)): Nome do vendedor.
idade (INT): Idade do vendedor.
2. Tabela barcos
Descrição: Armazena informações sobre os barcos disponíveis.

Campos:

idBarco (INT): Identificador único do barco (Chave Primária).
nomeBarco (VARCHAR(255)): Nome do barco.
cor (VARCHAR(50)): Cor do barco.
3. Tabela FazReserva
Descrição: Registra as reservas feitas pelos vendedores para os barcos.

Campos:

idVend (INT): Chave estrangeira referenciando vendedores(idVend).
idBarco (INT): Chave estrangeira referenciando barcos(idBarco).
dia (DATE): Data da reserva (Chave Primária).
