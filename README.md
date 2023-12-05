# Documentação da Base de Dados
Este repositório contém a definição e criação de uma base de dados SQL para o gerenciamento de informações sobre vendedores, barcos e suas reservas. A seguir, são fornecidas informações detalhadas sobre a estrutura da base de dados, as tabelas envolvidas e algumas inserções de dados de exemplo.

# Tabela `vendedores`
## Descrição: Armazena informações sobre os vendedores.

### Campos:

- `idVend (INT)`: Identificador único do vendedor (Chave Primária).
- `nomeVend (VARCHAR(255))`: Nome do vendedor.
- `idade (INT)`: Idade do vendedor.


# Tabela `barcos`
## Descrição: Armazena informações sobre os barcos disponíveis.

### Campos:

- `idBarco (INT)`: Identificador único do barco (Chave Primária).
- `nomeBarco (VARCHAR(255))`: Nome do barco.
- `cor (VARCHAR(50))`: Cor do barco.

# Tabela `FazReserva`
## Descrição: Registra as reservas feitas pelos vendedores para os barcos.

### Campos:

- `idVend (INT)`: Chave estrangeira referenciando vendedores(idVend).
- `idBarco (INT)`: Chave estrangeira referenciando barcos(idBarco).
- `dia (DATE)`: Data da reserva (Chave Primária).

# Inserções de Exemplo
 ## Tabela `vendedores`
```bash
INSERT INTO vendedores (idVend, nomeVend, idade) VALUES
(1, 'João Silva', 28),
(2, 'Maria Fernandes', 32),
... (dados de exemplo para os outros vendedores);
````

## Tabela `barcos`
```bash
INSERT INTO barcos (idBarco, nomeBarco, cor) VALUES
(1, 'Barco A', 'Azul'),
(2, 'Barco B', 'Vermelho'),
... (dados de exemplo para os outros barcos);
```

## Tabela `FazReserva`
```bash
INSERT INTO FazReserva (idVend, idBarco, dia) VALUES
(1, 1, '2023-10-10'),
(2, 2, '2023-10-11'),
... (dados de exemplo para as outras reservas);
```

# Relacionamentos

- A tabela `FazReserva` possui chaves estrangeiras (`idVend` e `idBarco`) que referenciam as tabelas `vendedores` e `barcos`, respectivamente.

- A relação entre as tabelas permite rastrear quais vendedores fizeram reservas para quais barcos em datas específicas.

# Observações

- Certifique-se de manter a integridade referencial ao inserir dados nas tabelas `FazReserva`, respeitando as chaves estrangeiras.

- As inserções de exemplo fornecidas são fictícias e podem ser substituídas por dados reais conforme necessário.

- Esperamos que esta documentação ajude na compreensão e utilização da base de dados. Em caso de dúvidas ou sugestões, sinta-se à vontade para entrar em contato.




