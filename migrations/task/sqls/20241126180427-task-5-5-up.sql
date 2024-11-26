/* Replace with your SQL commands */
UPDATE "COURSE_BOOKING" SET "status" = '上課中', "join_at" = '2024-11-24 14:01:59' WHERE "user_id" = (SELECT id FROM "USER" WHERE "email" = 'wXlTq@hexschooltest.io') AND status = '即將授課';
