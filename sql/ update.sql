update estados
set
  nome = 'Maranhão'
where
  sigla = 'MA';
update estados
set
  nome = 'Paraná',
  populacao = 11.32
where
  sigla = 'PR';
ALTER TABLE empresas
alter column
  cnpj type VARCHAR(14);