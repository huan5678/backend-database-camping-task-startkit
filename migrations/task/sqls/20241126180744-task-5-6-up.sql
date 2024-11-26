/* Replace with your SQL commands */
SELECT (SELECT "id" FROM "USER" WHERE "email" = 'wXlTq@hexschooltest.io') AS "user_id", SUM("purchased_credits") AS "total" FROM "CREDIT_PURCHASE" WHERE "user_id" = (SELECT id FROM "USER" WHERE "email" = 'wXlTq@hexschooltest.io') GROUP BY "user_id";
