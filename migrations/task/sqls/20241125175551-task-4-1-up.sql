/* Replace with your SQL commands */
INSERT INTO "COURSE" (user_id, skill_id, name, start_at, end_at, max_participants, meeting_url)
VALUES
  ((SELECT id FROM "USER" WHERE "email" = 'lee2000@hexschooltest.io'), (SELECT id FROM "SKILL" WHERE "name" = '重訓'), '重訓基礎課', '2024-11-25 14:00:00', '2024-11-25 16:00:00', 10, 'https://test-meeting.test.io');
