/* Replace with your SQL commands */
SELECT (SELECT "id" FROM "USER" WHERE "email" = 'wXlTq@hexschooltest.io') AS "user_id", Count(*) AS "total" FROM "COURSE_BOOKING" WHERE "user_id" = (SELECT id FROM "USER" WHERE "email" = 'wXlTq@hexschooltest.io') AND "status" != '課程已取消' OR "status" != '即將授課' GROUP BY "user_id";
