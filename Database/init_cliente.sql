CREATE TABLE cliente (
    id_cliente INTEGER GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    email VARCHAR(150) NOT NULL,
    telefone VARCHAR(15),
    data_nascimento DATE,
    ativo BOOLEAN NOT NULL DEFAULT TRUE,

    CONSTRAINT pk_cliente PRIMARY KEY (id_cliente),
    CONSTRAINT uq_cliente_cpf UNIQUE (cpf),
    CONSTRAINT uq_cliente_email UNIQUE (email)
);

INSERT INTO cliente (nome, cpf, email, telefone, data_nascimento, ativo) VALUES
('Ana Beatriz Silva', '11122233344', 'ana.silva@exemplo.com', '11988881111', '1992-05-14', TRUE),
('Carlos Eduardo Souza', '22233344455', 'carlos.souza@exemplo.com', '16999992222', '1988-11-23', TRUE),
('Mariana Costa Oliveira', '33344455566', 'mariana.oliveira@exemplo.com', '21977773333', '1995-02-10', TRUE),
('Pedro Henrique Santos', '44455566677', 'pedro.santos@exemplo.com', '31966664444', '1990-08-30', TRUE),
('Fernanda Lima Pereira', '55566677788', 'fernanda.pereira@exemplo.com', '41955555555', '1985-12-05', FALSE);
