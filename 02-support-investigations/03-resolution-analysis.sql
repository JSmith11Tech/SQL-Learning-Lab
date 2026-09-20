-- Support Investigation 03: Resolution Analysis
-- Analyze ticket resolution performance to identify slow cases,
-- compare support outcomes, and categorize resolution times.

-- Tables used:
-- users: user_id, name, email
-- tickets: ticket_id, user_id, issue_type, priority, status,
--          created_at, resolution_minutes


-- 1. Find tickets that took more than 60 minutes to resolve.

SELECT ticket_id, issue_type, priority, status, resolution_minutes
FROM tickets
WHERE resolution_minutes > 60;


-- 2. Find tickets that took between 30 and 60 minutes to resolve.

SELECT ticket_id, issue_type, priority, resolution_minutes
FROM tickets
WHERE resolution_minutes BETWEEN 30 AND 60;


-- 3. Categorize tickets by resolution time.

SELECT ticket_id, issue_type, resolution_minutes,
  CASE
    WHEN resolution_minutes <= 30 THEN 'Fast'
    WHEN resolution_minutes <= 60 THEN 'Moderate'
    ELSE 'Slow'
  END AS resolution_category
FROM tickets;


-- 4. Identify high-priority tickets that took more than 60 minutes to resolve
-- and show the customer who submitted each ticket.

SELECT ticket_id, name, issue_type, priority, resolution_minutes
FROM tickets
JOIN users
  ON users.user_id = tickets.user_id
WHERE priority = 'high'
  AND resolution_minutes > 60;
