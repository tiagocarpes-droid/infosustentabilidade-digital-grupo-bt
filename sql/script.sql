
-- 1. Criar a tabela de Pontos de Coleta primeiro (ela é a base de tudo)
CREATE TABLE pontos_coleta (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    logradouro VARCHAR(255),
    bairro VARCHAR(100),
    municipio_id VARCHAR(100) NOT NULL, -- Rio do Sul ou Mirim Doce
    contato VARCHAR(255),
    link_maps TEXT,
    observacao TEXT
);

-- 2. Criar a tabela de Materiais Aceitos
CREATE TABLE materiais_aceitos (
    id_material SERIAL PRIMARY KEY,
    id_ponto INT REFERENCES pontos_coleta(id) ON DELETE CASCADE,
    tipo_material VARCHAR(150) NOT NULL,
    aceita BOOLEAN DEFAULT TRUE,
    observacao TEXT
);

-- 3. Criar a tabela de Procedimentos de Descarte
CREATE TABLE procedimentos_descarte (
    id SERIAL PRIMARY KEY,
    id_ponto INT REFERENCES pontos_coleta(id) ON DELETE CASCADE,
    horario VARCHAR(255),
    agendamento VARCHAR(100),
    custo VARCHAR(100),
    modalidade VARCHAR(100),
    descricao TEXT
);

-- 4. Criar a tabela de Evidências
CREATE TABLE evidencias (
    id SERIAL PRIMARY KEY,
    id_ponto INT REFERENCES pontos_coleta(id) ON DELETE CASCADE,
    tipo VARCHAR(100),
    descricao TEXT,
    arquivo_link TEXT,
    data_verificacao DATE
);

-- 5. Criar a tabela de Análises Críticas (Independente do ponto, focado na cidade)
CREATE TABLE analises_criticas (
    id SERIAL PRIMARY KEY,
    cidade VARCHAR(100) NOT NULL,
    facilidade TEXT,
    dificuldades TEXT,
    divulgacao TEXT,
    melhorias TEXT
);
