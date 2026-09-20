-- Support Investigation 02: Customer Impact
-- Analyze support data to identify affected customers, repeated issues,
-- and patterns that may require follow-up or escalation.

-- Tables used:
-- users: user_id, name, email
-- tickets: ticket_id, user_id, issue_type, priority, status,
--          created_at, resolution_minutes


-- 1. Identify customers who have submitted more than one support ticket.

SELECT users.user_id, name, COUNT(ticket_id) AS ticket_count
FROM users
JOIN tickets
  ON users.user_id = tickets.user_id
GROUP BY users.user_id, name
HAVING COUNT(ticket_id) > 1;


-- 2. Identify the most common issue types.

SELECT issue_type, COUNT(ticket_id) AS ticket_count
FROM tickets
GROUP BY issue_type
ORDER BY ticket_count DESC;


-- 3. Find the average resolution time for each issue type.

SELECT issue_type, ROUND(AVG(resolution_minutes), 0) AS avg_resolution_time
FROM tickets
GROUP BY issue_type;


-- 4. Identify issue types with an average resolution time greater than 60 minutes.

SELECT issue_type, ROUND(AVG(resolution_minutes), 0) AS avg_resolution_time
FROM tickets
GROUP BY issue_type
HAVING AVG(resolution_minutes) > 60;


-- 5. Identify customers with more than one open support ticket.

SELECT users.user_id, name, COUNT(ticket_id) AS open_ticket_count
FROM users
JOIN tickets
  ON users.user_id = tickets.user_id
WHERE tickets.status = 'open'
GROUP BY users.user_id, name
HAVING COUNT(ticket_id) > 1;
