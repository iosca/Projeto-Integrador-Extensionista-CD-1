-- View Analítica para Cálculo de Viabilidade
CREATE OR REPLACE VIEW vw_viabilidade_migracao AS
SELECT 
    sec.nome_secretaria,
    COUNT(srv.id_servidor) AS total_servidores,
    SUM(CASE WHEN srv.elegivel_os = TRUE THEN 1 ELSE 0 END) AS servidores_elegiveis,
    COALESCE(SUM(ctr.valor_anual), 0) AS gasto_total_licencas
FROM tb_secretarias sec
LEFT JOIN tb_servidores srv ON sec.id_secretaria = srv.id_secretaria
LEFT JOIN tb_contratos_ti ctr ON sec.id_secretaria = ctr.id_secretaria
GROUP BY sec.nome_secretaria;