-- Practice combining related tables using JOIN and LEFT JOIN.
-- Focus on primary keys, foreign keys, and matching support data across tables.

-- Tables used:
-- users: user_id, name, email
-- tickets: ticket_id, user_id, issue_type, priority, status, created_at


-- Challenge 1:
-- Show each ticket together with the user who submitted it.
-- Match tickets to users using user_id.

SELECT *
FROM users
JOIN tickets
  ON users.user_id = tickets.user_id;


-- Challenge 2:
-- Show every user, along with any tickets they may have.
-- Include users even if they do not have a ticket.

SELECT users.user_id, name, ticket_id
FROM users
LEFT JOIN tickets
  ON users.user_id = tickets.user_id;


-- Challenge 3:
-- Show each ticket_id with the name of the user who opened it.
-- Use JOIN to match the two tables by user_id.

SELECT ticket_id, name
FROM tickets
JOIN users
  ON users.user_id = tickets.user_id;
