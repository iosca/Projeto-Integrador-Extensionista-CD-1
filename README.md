# Transição Open-Source na Administração Pública de Assis-SP

## Visão Geral
A administração pública municipal frequentemente destina uma grande parcela do seu orçamento de Tecnologia da Informação (TI) para a renovação de licenças de softwares proprietários. Este projeto de Data Science e Engenharia de Analytics mapeou, processou e analisou dados orçamentários abertos da Prefeitura de Assis-SP. O objetivo central foi calcular a viabilidade técnica e financeira da migração de estações de trabalho administrativas para um ecossistema 100% *open-source* (Linux + LibreOffice), visando a otimização de recursos públicos e a soberania tecnológica.

## Stack Tecnológica
- **Gestão:** GitHub Projects (Kanban)
- **Coleta de Dados:** Portal da Transparência (API SCPI Fiorilli)
- **Processamento (ETL):** Python (Pandas) / Jupyter Notebooks
- **Banco de Dados:** PostgreSQL
- **Business Intelligence:** Metabase (Self-hosted)

## Estrutura do Repositório
/
├── data/
│   ├── raw/           # Dados brutos coletados da API
│   └── processed/     # Dados higienizados para o Dashboard
├── notebooks/         # Pipeline de extração e transformação (ETL)
├── banco_de_dados/    # Scripts SQL (DDL/DQL) para PostgreSQL
├── dashboard/         # Prints de evidências do Metabase (Página 1 e 2)
├── gestao_projeto/    # Termo de Abertura, EAP, Riscos, Kanban e docs
└── relatorio_final/   # Documento oficial do projeto (ODT e PDF)

## Resultados Estratégicos
- **Economia Projetada:** ~R$ 1,4 milhão/ano com a substituição de licenças proprietárias nos setores administrativos.
- **Auditoria de Vendor Lock-in:** Mapeamento do domínio orçamentário por fornecedores, evidenciando a dependência de empresas como *Amendola & Amendola*.
- **Governança:** Implementação de uma arquitetura de BI transparente, aberta e auditável.

## Como Executar
1. Certifique-se de ter o PostgreSQL e o Metabase instalados.
2. Execute o notebook em `notebooks/Extração FINAL.ipynb` para processar os dados.
3. Importe os arquivos SQL em `banco_de_dados/` para estruturar a base de dados.
4. Conecte o Metabase ao banco PostgreSQL para replicar a visualização dos KPIs.

---
*Projeto desenvolvido por Caio Melo Oliveira como requisito do Projeto Integrador Extensionista CD 1.*
