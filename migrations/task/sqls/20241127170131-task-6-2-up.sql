/* Replace with your SQL commands */
WITH "skill_info" AS (
    SELECT id, name
    FROM "SKILL"
    WHERE id IN (SELECT skill_id FROM "COACH_LINK_SKILL")
)
SELECT
    "skill_info".name AS "專長名稱",
    COUNT(DISTINCT cls.coach_id) AS "教練數量"
FROM "skill_info"
INNER JOIN "COACH_LINK_SKILL" cls ON "skill_info".id = cls.skill_id
GROUP BY "skill_info".name
ORDER BY "教練數量" DESC
LIMIT 1;
