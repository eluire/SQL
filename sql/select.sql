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
inner join cidades as c on e.id = c.estado_id -------
select
  cid.nome,
  emp.nome,
  sede
from empresas_unidades eu
inner join cidades as cid on cid.id = eu.cidade_id
inner join empresas as emp on emp.id = eu.empresa_id