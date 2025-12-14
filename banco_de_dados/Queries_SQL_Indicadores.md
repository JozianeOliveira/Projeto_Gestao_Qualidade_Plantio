📊 QUERIES SQL — INDICADORES DO PROCESSO DE PLANTIO


⸻

1️⃣ Produção total por colaborador

📌 Quanto cada colaborador produziu no período

SELECT 
    c.id_colaborador,
    c.nome,
    SUM(ap.quantidade) AS total_produzido
FROM colaborador c
JOIN apontamento_producao ap 
    ON c.id_colaborador = ap.id_colaborador
GROUP BY c.id_colaborador, c.nome
ORDER BY total_produzido DESC;

2️⃣ Produção por atividade (Plantio, Cobertura, etc.)

📌 Quanto foi produzido em cada etapa do processo

SELECT 
    a.nome AS atividade,
    SUM(ap.quantidade) AS total_produzido
FROM atividade a
JOIN apontamento_producao ap 
    ON a.id_atividade = ap.id_atividade
GROUP BY a.nome;

3️⃣ Índice de erros por colaborador (qualidade)

📌 Total de erros registrados nas avaliações

SELECT
    c.id_colaborador,
    c.nome,
    SUM(aa.valor_apontado) AS total_erros
FROM colaborador c
JOIN apontamento_avaliacao aa
    ON c.id_colaborador = aa.id_colaborador
GROUP BY c.id_colaborador, c.nome
ORDER BY total_erros ASC;

4️⃣ Erros por tipo de regra

📌 Quais erros ocorrem com mais frequência

SELECT
    r.descricao AS regra,
    SUM(aa.valor_apontado) AS total_ocorrencias
FROM regra_avaliacao r
JOIN apontamento_avaliacao aa
    ON r.id_regra = aa.id_regra
GROUP BY r.descricao
ORDER BY total_ocorrencias DESC;

5️⃣ Qualidade média por colaborador (normalizada)

📌 Indicador simples de qualidade

SELECT
    c.id_colaborador,
    c.nome,
    ROUND(AVG(aa.valor_apontado), 2) AS media_erros
FROM colaborador c
JOIN apontamento_avaliacao aa
    ON c.id_colaborador = aa.id_colaborador
GROUP BY c.id_colaborador, c.nome
ORDER BY media_erros ASC;

6️⃣ Bonificação total por colaborador

📌 Valor financeiro gerado pelas avaliações

SELECT
    c.id_colaborador,
    c.nome,
    SUM(b.valor) AS total_bonificacao
FROM colaborador c
JOIN bonificacao b
    ON c.id_colaborador = b.id_colaborador
GROUP BY c.id_colaborador, c.nome
ORDER BY total_bonificacao DESC;

7️⃣ Produtividade x Qualidade (visão gerencial)

📌 Cruza produção e erros

SELECT
    c.id_colaborador,
    c.nome,
    SUM(ap.quantidade) AS total_produzido,
    SUM(aa.valor_apontado) AS total_erros
FROM colaborador c
LEFT JOIN apontamento_producao ap
    ON c.id_colaborador = ap.id_colaborador
LEFT JOIN apontamento_avaliacao aa
    ON c.id_colaborador = aa.id_colaborador
GROUP BY c.id_colaborador, c.nome
ORDER BY total_produzido DESC;

8️⃣ Produção por turma

📌 Desempenho coletivo

SELECT
    t.nome_turma,
    SUM(ap.quantidade) AS total_produzido
FROM turma t
JOIN colaborador c
    ON t.id_turma = c.id_turma
JOIN apontamento_producao ap
    ON c.id_colaborador = ap.id_colaborador
GROUP BY t.nome_turma;

9️⃣ Qualidade por turma

📌 Erros totais por equipe

SELECT
    t.nome_turma,
    SUM(aa.valor_apontado) AS total_erros
FROM turma t
JOIN colaborador c
    ON t.id_turma = c.id_turma
JOIN apontamento_avaliacao aa
    ON c.id_colaborador = aa.id_colaborador
GROUP BY t.nome_turma
ORDER BY total_erros ASC;

🔟 Ranking de colaboradores (performance geral)

📌 Produção alta + poucos erros

SELECT
    c.id_colaborador,
    c.nome,
    SUM(ap.quantidade) AS producao,
    SUM(aa.valor_apontado) AS erros,
    (SUM(ap.quantidade) - SUM(aa.valor_apontado)) AS score_performance
FROM colaborador c
LEFT JOIN apontamento_producao ap
    ON c.id_colaborador = ap.id_colaborador
LEFT JOIN apontamento_avaliacao aa
    ON c.id_colaborador = aa.id_colaborador
GROUP BY c.id_colaborador, c.nome
ORDER BY score_performance DESC;