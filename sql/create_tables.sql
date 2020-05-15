-- Criando o tipo região
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
create table public.cidades (
  id serial,
  nome character varying(255) NOT NULL,
  estado_id integer NOT NULL,
  area numeric,
  PRIMARY KEY(id),
  FOREIGN KEY (estado_id) REFERENCES estados (id)
);
create table public.prefeitos (
  id serial,
  nome character varying(255) NOT NULL,
  cidade_id integer,
  PRIMARY KEY(id),
  UNIQUE (cidade_id),
  FOREIGN KEY (cidade_id) REFERENCES cidades (id)
)