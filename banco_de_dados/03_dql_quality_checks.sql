-- Checagem de Nulos em campos críticos de despesas
SELECT COUNT(*) AS registros_invalidos 
FROM tb_contratos_ti 
WHERE valor_anual IS NULL OR fornecedor IS NULL;

-- Checagem de dados órfãos (Integridade Referencial)
SELECT COUNT(*) AS servidores_sem_secretaria 
FROM tb_servidores 
WHERE id_secretaria NOT IN (SELECT id_secretaria FROM tb_secretarias);