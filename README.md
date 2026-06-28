# Transição Open-Source na Administração Pública de Assis-SP

## Contexto e Objetivo
A administração pública municipal frequentemente destina uma grande parcela do seu orçamento de Tecnologia da Informação (TI) para a renovação de licenças de softwares proprietários. Este projeto de Data Science e Engenharia de Analytics visa mapear, processar e analisar dados orçamentários abertos da Prefeitura de Assis-SP para calcular a viabilidade e o Retorno sobre o Investimento (ROI) da migração de estações de trabalho para um ecossistema 100% *open-source* (Linux + LibreOffice).

O objetivo é entregar uma solução analítica que suporte a tomada de decisão de gestores públicos, promovendo otimização de recursos e soberania tecnológica.

## Stack Tecnológica (Ferramentas Utilizadas)
- **Gestão Ágil:** GitHub (Issues & Kanban)
- **Coleta de Dados:** Portal da Transparência (Sistema SCPI Fiorilli)
- **Análise e Processamento (ETL):** Python (Pandas) / Jupyter Notebooks *(Em desenvolvimento)*
- **Visualização de Dados:** Microsoft Power BI *(Em planejamento)*

## Estrutura do Repositório
A organização das pastas segue as melhores práticas de Engenharia de Dados:
- `/data/raw`: Bases de dados brutas e originais (em formato .csv/.xlsx).
- `/data/processed`: Bases limpas e tratadas após o pipeline de qualidade.
- `/docs`: Documentação de negócios, dicionários de dados, matrizes de risco e wireframes.
- `/notebooks`: Scripts em Python para EDA (Análise Exploratória) e limpeza.

## Metodologia e Próximos Passos
1. **Fase 1 (Planejamento):** Definição de KPIs (ex: Custo de Licenciamento por Usuário - CLU) e arquitetura de dados.
2. **Fase 2 (ETL):** Extração de contratos de TI e relação de servidores, limpeza de dados nulos e cruzamento de informações. *(Atual)*
3. **Fase 3 (Data Storytelling):** Construção de um Dashboard interativo de duas páginas (Visão Executiva e Visão Detalhada).

---
*Projeto desenvolvido por Caio Melo Oliveira como requisito do Projeto Integrador Extensionista CD 1.*
