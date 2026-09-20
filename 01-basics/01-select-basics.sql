-- SQL Learning Lab: Select Basics
-- Practice retrieving support data using basic SELECT statements.
-- Focus on selecting complete records and specific columns from users
-- and support ticket data.

users
-----
user_id
name
email

tickets
-------
ticket_id
user_id
issue_type
priority
status

-- View all users.
SELECT *
FROM users;

-- View basic user information.
SELECT user_id, name, email
FROM users;

-- View all support tickets.
SELECT *
FROM tickets;

-- View key ticket information.
SELECT ticket_id, issue_type, priority, status
FROM tickets;

-- View ticket ownership information.
SELECT ticket_id, user_id, status
FROM tickets;
