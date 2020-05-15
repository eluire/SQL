-- EXEMPLOS DE SELECT
select
  id,
  nome as nome_do_estado,
  sigla
from estados
where
  regiao = 'Nordeste'
order by
  populacao desc;
-- JOIN --
select
  c.nome as Cidade,
  e.nome as Estado,
  regiao
from estados as e
inner join cidades as c on e.id = c.estado_id