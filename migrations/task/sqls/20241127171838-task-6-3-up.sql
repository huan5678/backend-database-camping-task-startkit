/* Replace with your SQL commands */
WITH "credit_package_info" AS (
  SELECT id, name
  FROM "CREDIT_PACKAGE"
  WHERE id IN (SELECT credit_package_id FROM "CREDIT_PURCHASE")
)
SELECT
  "credit_package_info".name AS "組合包方案名稱",
  COUNT(DISTINCT "CREDIT_PURCHASE".user_id) AS "銷售數量"
FROM "credit_package_info"
INNER JOIN "CREDIT_PURCHASE" ON "credit_package_info".id = "CREDIT_PURCHASE".credit_package_id
WHERE EXTRACT(MONTH FROM "CREDIT_PURCHASE".created_at) = 11
    AND EXTRACT(YEAR FROM "CREDIT_PURCHASE".created_at) = 2024
GROUP BY "credit_package_info".name
ORDER BY "銷售數量" DESC
LIMIT 1;
