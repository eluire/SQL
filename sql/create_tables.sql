-- Criando o tipo região
-- @block create regiao type
-- @conn dev
CREATE TYPE type_regiao AS ENUM(
  'Norte',
  'Nordeste',
  'Centro-Oeste',
  'Sudeste',
  'Sul'
);
--opção de dropar a tabela
DROP TABLE estados;
-- Criando tabela estado
-- @block create estados table
CREATE TABLE public.estados (
  id SERIAL,
  nome character varying(45) NOT NULL,
  sigla character varying(2) NOT NULL,
  regiao type_regiao NOT NULL,
  populacao numeric NOT NULL,
  PRIMARY KEY(id),
  UNIQUE (nome),
  UNIQUE (sigla)
);