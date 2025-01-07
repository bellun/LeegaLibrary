# Desafio SQL - Biblioteca Municipal

Este projeto foi desenvolvido como parte do **Case de Conclusão do Módulo de SQL** da Leega Academy. Ele aborda a criação de uma base de dados para a Biblioteca Municipal, incluindo a extração, transformação e carga de dados, além da execução de consultas específicas.

## Contexto do Projeto

A Biblioteca Municipal foi reformada e informatizada, necessitando de uma solução de banco de dados para gerenciar seu acervo, usuários, funcionários, empréstimos e reservas. Este projeto foi desenvolvido para atender a essas necessidades, incluindo a modelagem de dados, processamento de informações e criação de consultas SQL.

## Processo de Desenvolvimento

1. **Extração e Tratamento de Dados:**
   - Os dados fornecidos no arquivo `dados_biblioteca.csv` foram analisados e transformados utilizando o **Power BI**.
   - Realizamos as transformações necessárias para garantir a integridade e consistência das informações.

2. **Carga de Dados:**
   - O **DAX Studio** foi utilizado para realizar a carga dos dados tratados no banco de dados modelado.
   - Os dados foram carregados conforme a modelagem física desenvolvida.

3. **Execução de Consultas SQL:**
   - Após a modelagem e carga, foram implementadas as consultas solicitadas para atender às demandas específicas do escopo.

## Objetivo

O objetivo deste projeto é implementar uma solução robusta para:
- Modelagem física de banco de dados com base no modelo lógico fornecido.
- Extração, transformação e carga de dados.
- Criação de consultas SQL complexas para atender a necessidades específicas da biblioteca.

## Escopo das Solicitações

As solicitações abrangem:
- Listagens e contagens de obras, reservas, empréstimos e devoluções.
- Consultas sobre atrasos e multas.
- Alterações e inserções de dados.
- Criação e exclusão de campos e visões no banco de dados.
- Consultas complexas envolvendo condições específicas, agrupamentos e ordenações.

## Requisitos

- **Ferramentas:**
  - Power BI para transformação e análise.
  - DAX Studio para carga de dados.
  - MySQL (ou outro SGBD compatível) para consultas.
- **Arquivo de Dados:** `dados_biblioteca.csv`.

## Estrutura do Projeto

- `modelagem/`: Modelo físico do banco de dados.
- `scripts/`: Scripts SQL com consultas e alterações solicitadas.
- `dados/`: Arquivo CSV e relatórios do Power BI.
- `dicionario/`: Dicionário de dados detalhando tabelas, colunas e tipos.

