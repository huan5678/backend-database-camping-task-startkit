/* Replace with your SQL commands */
WITH "user_info" AS (
    SELECT id FROM "USER" WHERE email = 'wXlTq@hexschooltest.io'
),
"total_credits" AS (
    SELECT
        user_id,
        SUM(purchased_credits) as total_purchased
    FROM "CREDIT_PURCHASE"
    WHERE user_id = (SELECT id FROM user_info)
    GROUP BY user_id
),
"used_credits" AS (
    SELECT
        user_id,
        COUNT(*) as total_used
    FROM "COURSE_BOOKING"
    WHERE
        user_id = (SELECT id FROM user_info)
        AND status NOT IN ('課程已取消', '即將授課')
    GROUP BY user_id
)
SELECT
    total_credits.user_id,
    (total_credits.total_purchased - COALESCE(used_credits.total_used, 0)) AS remaining_credit
FROM total_credits
LEFT JOIN used_credits ON total_credits.user_id = used_credits.user_id;
