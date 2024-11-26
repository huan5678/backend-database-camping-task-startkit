/* Replace with your SQL commands */
SELECT * FROM "COURSE_BOOKING"
WHERE "user_id" = (SELECT id FROM "USER" WHERE "email" = 'wXlTq@hexschooltest.io');
