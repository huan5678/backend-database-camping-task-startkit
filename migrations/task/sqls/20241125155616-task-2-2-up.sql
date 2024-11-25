/* Replace with your SQL commands */
INSERT INTO "CREDIT_PURCHASE" (user_id, credit_package_id)
VALUES
  ((SELECT id FROM "USER" WHERE name = '王小明'), (SELECT id FROM "CREDIT_PACKAGE" WHERE name = '14 堂組合包方案')),
  ((SELECT id FROM "USER" WHERE name = '王小明'), (SELECT id FROM "CREDIT_PACKAGE" WHERE name = '21 堂組合包方案')),
  ((SELECT id FROM "USER" WHERE name = '好野人'), (SELECT id FROM "CREDIT_PACKAGE" WHERE name = '14 堂組合包方案'));
