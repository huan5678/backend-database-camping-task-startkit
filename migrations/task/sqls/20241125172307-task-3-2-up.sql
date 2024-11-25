/* Replace with your SQL commands */
INSERT INTO "COACH_LINK_SKILL" (coach_id, skill_id)
SELECT "COACH".id, "SKILL".id
FROM "COACH"
CROSS JOIN (SELECT id FROM "SKILL" WHERE name = '重訓') "SKILL";

INSERT INTO "COACH_LINK_SKILL" (coach_id, skill_id)
VALUES
  ((SELECT id FROM "COACH" WHERE "user_id" = (SELECT id FROM "USER" WHERE "email" = 'muscle@hexschooltest.io')), (SELECT id FROM "SKILL" WHERE "name" = '瑜伽')),
  ((SELECT id FROM "COACH" WHERE "user_id" = (SELECT id FROM "USER" WHERE "email" = 'starplatinum@hexschooltest.io')), (SELECT id FROM "SKILL" WHERE "name" = '有氧運動')),
  ((SELECT id FROM "COACH" WHERE "user_id" = (SELECT id FROM "USER" WHERE "email" = 'starplatinum@hexschooltest.io')), (SELECT id FROM "SKILL" WHERE "name" = '復健訓練'));
