-- Criação da Tabela de Dimensão: Secretarias
CREATE TABLE tb_secretarias (
    id_secretaria SERIAL PRIMARY KEY,
    nome_secretaria VARCHAR(150) NOT NULL,
    orcamento_total_ti DECIMAL(15,2) DEFAULT 0.00
);

-- Criação da Tabela Fato: Contratos de TI (Despesas)
CREATE TABLE tb_contratos_ti (
    id_contrato SERIAL PRIMARY KEY,
    id_secretaria INT NOT NULL,
    fornecedor VARCHAR(100) NOT NULL,
    valor_anual DECIMAL(15,2) CHECK (valor_anual > 0),
    qtd_licencas INT CHECK (qtd_licencas > 0),
    data_vencimento DATE,
    CONSTRAINT fk_secretaria_contrato FOREIGN KEY (id_secretaria) REFERENCES tb_secretarias(id_secretaria)
);

-- Criação da Tabela Fato: Servidores (Pessoal)
CREATE TABLE tb_servidores (
    id_servidor SERIAL PRIMARY KEY,
    id_secretaria INT NOT NULL,
    cargo_funcao VARCHAR(100) NOT NULL,
    perfil_uso VARCHAR(50) CHECK (perfil_uso IN ('Básico', 'Específico')),
    elegivel_os BOOLEAN NOT NULL,
    CONSTRAINT fk_secretaria_servidor FOREIGN KEY (id_secretaria) REFERENCES tb_secretarias(id_secretaria)
);