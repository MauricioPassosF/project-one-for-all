SELECT
MIN(P.plan_value) AS faturamento_minimo,
MAX(P.plan_value) AS faturamento_maximo,
ROUND(AVG(P.plan_value),2) AS faturamento_medio,
ROUND(SUM(P.plan_value),2) AS faturamento_total
FROM users AS U
INNER JOIN plans AS P
ON U.plan_id = P.plan_id;