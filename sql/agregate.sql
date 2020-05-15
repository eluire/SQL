select
  regiao,
  sum(populacao) as Total
from estados
group by
  regiao
order by
  Total desc