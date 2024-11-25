/* Replace with your SQL commands */
UPDATE "COACH" SET "experience_years" = "target"."years" FROM "USER" JOIN (
  VALUES
  ('muscle@hexschooltest.io', 3),
  ('starplatinum@hexschooltest.io', 5)
) AS "target"("email", "years") ON "USER"."email" = "target"."email" WHERE "COACH"."user_id" = "USER"."id";
