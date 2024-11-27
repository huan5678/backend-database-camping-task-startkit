/* Replace with your SQL commands */
SELECT COUNT(DISTINCT "user_id") AS "預約會員人數" FROM "COURSE_BOOKING" WHERE EXTRACT(MONTH FROM "created_at") = 11 AND EXTRACT(YEAR FROM "created_at") = 2024 AND "status" != '課程已取消';
