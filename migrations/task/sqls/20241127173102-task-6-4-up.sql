/* Replace with your SQL commands */
WITH "credit_package_info" AS (
  SELECT id, price
  FROM "CREDIT_PACKAGE"
  WHERE id IN (SELECT credit_package_id FROM "CREDIT_PURCHASE")
)
SELECT
  SUM("CREDIT_PURCHASE".price_paid) AS "總營收"
FROM "credit_package_info"
INNER JOIN "CREDIT_PURCHASE" ON "credit_package_info".id = "CREDIT_PURCHASE".credit_package_id
WHERE EXTRACT(MONTH FROM "CREDIT_PURCHASE".purchase_at) = 11
    AND EXTRACT(YEAR FROM "CREDIT_PURCHASE".purchase_at) = 2024
