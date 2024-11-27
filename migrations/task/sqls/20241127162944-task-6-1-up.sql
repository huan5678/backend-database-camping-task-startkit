/* Replace with your SQL commands */
WITH "user_info" AS (
  SELECT name, id FROM "USER" WHERE id IN (SELECT user_id FROM "COACH")
)
SELECT DISTINCT
  "COACH".experience_years AS "經驗年數",
  "user_info".name AS "教練名稱",
  "SKILL".name AS "專長名稱"
FROM "COACH"
INNER JOIN "user_info" ON "COACH".user_id = "user_info".id
INNER JOIN "COACH_LINK_SKILL" ON "COACH".id = "COACH_LINK_SKILL".coach_id
INNER JOIN "SKILL" on "SKILL".id = "COACH_LINK_SKILL".skill_id
WHERE "SKILL".name = '重訓'
ORDER BY "COACH".experience_years DESC;
