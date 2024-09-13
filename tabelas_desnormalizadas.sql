
-- Tabela 1: Clientes com Pedidos (Desnormalizada)
CREATE TABLE Clientes_Pedidos(
    ClienteID INT PRIMARY KEY,
    Nome_Cliente VARCHAR(100),
    Endereco_Cliente VARCHAR(255),
    Telefone_Cliente VARCHAR(20),
    PedidoID INT,
    Data_Pedido DATE,
    Valor_Total DECIMAL(10, 2),
    ProdutoID INT,
    Nome_Produto VARCHAR(100),
    Quantidade INT,
    Preco_Unitario DECIMAL(10, 2)
);

-- Tabela 2: Funcionarios com Departamentos e Projetos (Desnormalizada)
CREATE TABLE Funcionarios_Projetos (
    FuncionarioID INT PRIMARY KEY,
    Nome_Funcionario VARCHAR(100),
    DepartamentoID INT,
    Nome_Departamento VARCHAR(100),
    ProjetoID INT,
    Nome_Projeto VARCHAR(100),
    Cargo_Funcionario VARCHAR(50),
    Data_Entrada DATE,
    Salario DECIMAL(10, 2)
);
