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
- `/gestao_projeto/`
    - `Termo_Abertura.md`, `EAP.md`, `Matriz_Riscos.md`, `Atas_Reuniao.md` e `Quadro_Kanban.png`
    - `/docs`
    - `/escopo-1`: Contém os documentos de diretrizes iniciais (`Atividade_Estudo_1_AE1.pdf` e `Atividade_Estudo_2_AE2.pdf`) utilizados como base de escopo.
- `/notebooks/`: Scripts em Python para ETL e EDA.
- `/data/`: Subdividida em `raw/` (dados brutos) e `processed/` (dados limpos).
- `/banco_de_dados/`: Scripts SQL (DDL/DQL) para PostgreSQL.
- `/dashboard/`: Evidências visuais (prints) do painel Metabase.
- `/relatorio_final/`: Documentação oficial (ODT e PDF).

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
