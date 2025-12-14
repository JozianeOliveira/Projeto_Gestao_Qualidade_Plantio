CREATE TABLE turma (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(100),
    data_inicio DATE,
    data_fim DATE
);

CREATE TABLE colaborador (
    id_colaborador INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    funcao VARCHAR(50),
    ativo BOOLEAN,
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);

CREATE TABLE servico_campo (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100),
    tipo_unidade VARCHAR(30),
    valor_unitario DECIMAL(10,2)
);

CREATE TABLE atividade (
    id_atividade INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    ponto_processo INT,
    id_servico INT,
    FOREIGN KEY (id_servico) REFERENCES servico_campo(id_servico)
);

CREATE TABLE apontamento_producao (
    id_apontamento INT AUTO_INCREMENT PRIMARY KEY,
    id_colaborador INT,
    id_atividade INT,
    quantidade DECIMAL(10,2),
    data_apontamento DATE,
    FOREIGN KEY (id_colaborador) REFERENCES colaborador(id_colaborador),
    FOREIGN KEY (id_atividade) REFERENCES atividade(id_atividade)
);

CREATE TABLE modelo_avaliacao (
    id_modelo INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100),
    impacta_remuneracao BOOLEAN,
    tipo_incidencia VARCHAR(20)
);

CREATE TABLE regra_avaliacao (
    id_regra INT AUTO_INCREMENT PRIMARY KEY,
    id_modelo INT,
    descricao VARCHAR(100),
    tipo_regra VARCHAR(20),
    peso DECIMAL(5,2),
    tolerancia_min INT,
    tolerancia_max INT,
    FOREIGN KEY (id_modelo) REFERENCES modelo_avaliacao(id_modelo)
);

CREATE TABLE apontamento_avaliacao (
    id_avaliacao INT AUTO_INCREMENT PRIMARY KEY,
    id_colaborador INT,
    id_regra INT,
    valor_apontado INT,
    data_avaliacao DATE,
    FOREIGN KEY (id_colaborador) REFERENCES colaborador(id_colaborador),
    FOREIGN KEY (id_regra) REFERENCES regra_avaliacao(id_regra)
);

CREATE TABLE bonificacao (
    id_bonificacao INT AUTO_INCREMENT PRIMARY KEY,
    id_colaborador INT,
    valor DECIMAL(10,2),
    data_referencia DATE,
    FOREIGN KEY (id_colaborador) REFERENCES colaborador(id_colaborador)
);