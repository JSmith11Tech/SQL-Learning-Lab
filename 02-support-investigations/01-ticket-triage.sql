-- Support Investigation 01: Ticket Triage
-- Investigate the support ticket queue to identify high-priority issues,
-- determine which customers are affected, and surface tickets requiring attention.

-- Task 1:
-- Find all tickets that are both open and high priority.
-- Show the ticket_id, user_id, issue_type, priority, and status.

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
created_at
resolution_minutes
  
SELECT ticket_id, user_id, issue_type, priority, status
FROM tickets
WHERE status = 'open' 
  AND priority = 'high';


-- Task 2:
-- Find all open tickets.
-- Show ticket_id, issue_type, priority, status, and created_at.
-- Sort the tickets so the newest ones appear first.

SELECT ticket_id, issue_type, priority, status, created_at
FROM tickets
WHERE status = 'open'
ORDER BY created_at DESC;


-- Task 3:
-- Show each ticket with the name of the user who submitted it.
-- Return ticket_id, name, issue_type, priority, and status. 

SELECT ticket_id, name, issue_type, priority, status
FROM tickets
JOIN users
  ON users.user_id = tickets.user_id;


-- Task 4:
-- Show only high-priority tickets with the name of the user who submitted them.
-- Return ticket_id, name, issue_type, priority, and status.

SELECT ticket_id, name, issue_type, priority, status
FROM tickets
JOIN users
  ON users.user_id = tickets.user_id
WHERE priority = 'high';


-- Task 5:
-- Show every user, including users who have not submitted any tickets.
-- Return user_id, name, and ticket_id.

SELECT users.user_id, name, ticket_id
FROM users
LEFT JOIN tickets
  ON users.user_id = tickets.user_id;


-- Task 6:
-- Find users who have never submitted a support ticket.
-- Return user_id, name, and email.

SELECT user_id, name, email
FROM users
LEFT JOIN tickets
  ON users.user_id = tickets.user_id
WHERE ticket_id IS NULL;


-- Find users who have submitted at least one open ticket.
-- Return user_id, name, ticket_id, and status.

SELECT users.user_id, name, ticket_id, status
FROM users
JOIN tickets
  ON users.user_id = tickets.user_id
WHERE status = 'open';


-- Find all open high-priority tickets and show the user who submitted each one.
-- Return user_id, name, ticket_id, priority, and status.

SELECT users.user_id, name, ticket_id, priority, status
FROM tickets
JOIN users
  ON users.user_id = tickets.user_id
WHERE status = 'open'
  AND priority = 'high';

-- Show every user, including users who have never submitted a ticket.
-- Return user_id, name, ticket_id, and status.

SELECT users.user_id, name, ticket_id, status
FROM users
LEFT JOIN tickets
  ON users.user_id = tickets.user_id


-- Find users who have no support tickets.
-- Return user_id, name, and email.

SELECT users.user_id, name, email
FROM users
LEFT JOIN tickets
  ON users.user_id = tickets.user_id
WHERE ticket_id IS NULL;
