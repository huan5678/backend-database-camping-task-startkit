/* Replace with your SQL commands */
UPDATE "COURSE_BOOKING" SET "status" = '課程已取消', "cancelled_at" = '2024-11-24 17:00:00' WHERE "user_id" = (SELECT id FROM "USER" WHERE "email" = 'wXlTq@hexschooltest.io') AND "course_id" = (SELECT id FROM "COURSE" WHERE user_id = (SELECT id FROM "USER" WHERE "email" = 'lee2000@hexschooltest.io'));
