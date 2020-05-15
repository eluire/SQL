--EXEMPLOS DE INSERTS
INSERT INTO estados (nome, sigla, regiao, populacao)
VALUES
  ('Alagoas', 'AL', 'Nordeste', 3.38),
  ('Amapá', 'AP', 'Norte', 0.8),
  ('Amazonas', 'AM', 'Norte', 4.06);('Bahia', 'BA', 'Nordeste', 15.34),
  ('Ceará', 'CE', 'Nordeste', 9.02),
  ('Distrito Federal', 'DF', 'Centro-Oeste', 3.04),
  ('Espírito Santo', 'ES', 'Sudeste', 4.02),
  ('Goiás', 'GO', 'Centro-Oeste', 6.78),
  ('Maranhao', 'MA', 'Nordeste', 7.00),
  ('Mato Grosso', 'MT', 'Centro-Oeste', 3.34),
  ('Mato Grosso do Sul', 'MS', 'Centro-Oeste', 2.71),
  ('Minas Gerais', 'MG', 'Sudeste', 21.12),
  ('Pará', 'PA', 'Norte', 8.36),
  ('Paraíba', 'PB', 'Nordeste', 4.03),
  ('Parana', 'PR', 'Sul', 11.22),
  ('Pernambuco', 'PE', 'Nordeste', 9.47),
  ('Piauí', 'PI', 'Nordeste', 3.22),
  ('Rio de Janeiro', 'RJ', 'Sudeste', 16.72),
  ('Rio Grande do Norte', 'RN', 'Nordeste', 3.51),
  ('Rio Grande do Sul', 'RS', 'Sul', 11.32),
  ('Rondônia', 'RO', 'Norte', 1.81),
  ('Roraima', 'RR', 'Norte', 0.52),
  ('Santa Catarina', 'SC', 'Sul', 7.01),
  ('São Paulo', 'SP', 'Sudeste', 45.10),
  ('Sergipe', 'SE', 'Nordeste', 2.29),
  ('Tocantins', 'TO', 'Norte', 1.55);
insert into cidades (nome, area, estado_id)
values
  (
    'Juazeiro do Norte',
    248.2,
    (
      select
        id
      from estados
      where
        sigla = 'CE'
    )
  ),
  (
    'Campinas',
    795,
    (
      select
        id
      from estados
      where
        sigla = 'SP'
    )
  ),
  (
    'Niteroi',
    133.9,
    (
      select
        id
      from estados
      where
        sigla = 'RJ'
    )
  ),
  (
    'Caruarú',
    920.6,
    (
      select
        id
      from estados
      where
        sigla = 'PE'
    )
  );
insert into prefeitos (nome, cidade_id)
values
  (
    'Rodrigo Neves',
    (
      select
        id
      from cidades
      where
        nome = 'Niteroi'
    )
  ),
  (
    'Raquel Lira',
    (
      select
        id
      from cidades
      where
        nome = 'Caruarú'
    )
  ),
  ('Zenaldo Coutinho', null);
select
  id
from cidades
where
  nome = 'Niteroi'