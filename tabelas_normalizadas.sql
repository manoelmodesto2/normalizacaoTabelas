-- Tabelas Normalizadas

-- Tabela Clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome_Cliente VARCHAR(100),
    Endereco_Cliente VARCHAR(255),
    Telefone_Cliente VARCHAR(20)
);

-- Tabela Pedidos
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    Data_Pedido DATE,
    Valor_Total DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Tabela Produtos
CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY,
    Nome_Produto VARCHAR(100),
    Preco_Unitario DECIMAL(10, 2)
);

-- Tabela Itens_Pedido
CREATE TABLE Itens_Pedido (
    PedidoID INT,
    ProdutoID INT,
    Quantidade INT,
    Preco_Unitario DECIMAL(10, 2),
    PRIMARY KEY (PedidoID, ProdutoID),
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);

-- Tabela Funcionarios
CREATE TABLE Funcionarios (
    FuncionarioID INT PRIMARY KEY,
    Nome_Funcionario VARCHAR(100),
    Cargo_Funcionario VARCHAR(50),
    Data_Entrada DATE,
    Salario DECIMAL(10, 2)
);

-- Tabela Departamentos
CREATE TABLE Departamentos (
    DepartamentoID INT PRIMARY KEY,
    Nome_Departamento VARCHAR(100)
);

-- Tabela Projetos
CREATE TABLE Projetos (
    ProjetoID INT PRIMARY KEY,
    Nome_Projeto VARCHAR(100)
);

-- Tabela Funcionario_Departamento
CREATE TABLE Funcionario_Departamento (
    FuncionarioID INT,
    DepartamentoID INT,
    PRIMARY KEY (FuncionarioID, DepartamentoID),
    FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID),
    FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
);

-- Tabela Funcionario_Projeto
CREATE TABLE Funcionario_Projeto (
    FuncionarioID INT,
    ProjetoID INT,
    PRIMARY KEY (FuncionarioID, ProjetoID),
    FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID),
    FOREIGN KEY (ProjetoID) REFERENCES Projetos(ProjetoID)
);