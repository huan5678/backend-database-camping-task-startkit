/* Replace with your SQL commands */
INSERT INTO "COURSE_BOOKING" (user_id, course_id, status, booking_at)
VALUES
((SELECT id FROM "USER" WHERE "email" = 'wXlTq@hexschooltest.io'), (SELECT id FROM "COURSE" WHERE user_id = (SELECT id FROM "USER" WHERE "email" = 'lee2000@hexschooltest.io')), '即將授課', '2024-11-24 17:10:25');
