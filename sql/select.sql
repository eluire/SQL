select
  id,
  nome as nome_do_estado,
  sigla
from estados
where
  regiao = 'Nordeste'
order by
  populacao desc;