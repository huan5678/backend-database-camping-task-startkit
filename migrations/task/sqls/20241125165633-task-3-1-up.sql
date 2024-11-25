/* Replace with your SQL commands */
INSERT INTO "COACH" (user_id, experience_years)
SELECT id, 2 AS "experience_years"
FROM "USER"
WHERE "email" IN ('lee2000@hexschooltest.io', 'muscle@hexschooltest.io', 'starplatinum@hexschooltest.io');
