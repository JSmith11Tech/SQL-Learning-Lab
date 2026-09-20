-- Support Investigation 01: Ticket Triage
-- Investigate the support ticket queue to identify high-priority issues,
-- determine which customers are affected, and surface tickets requiring attention.

-- Tables used:
-- users: user_id, name, email
-- tickets: ticket_id, user_id, issue_type, priority, status,
--          created_at, resolution_minutes


-- 1. Find open high-priority tickets requiring attention.

SELECT ticket_id, user_id, issue_type, priority, status
FROM tickets
WHERE status = 'open'
  AND priority = 'high';


-- 2. Review open tickets with the newest submissions first.

SELECT ticket_id, issue_type, priority, status, created_at
FROM tickets
WHERE status = 'open'
ORDER BY created_at DESC;


-- 3. Connect tickets with the users who submitted them.

SELECT ticket_id, name, issue_type, priority, status
FROM tickets
JOIN users
  ON users.user_id = tickets.user_id;


-- 4. Identify users affected by open high-priority tickets.

SELECT users.user_id, name, ticket_id, priority, status
FROM tickets
JOIN users
  ON users.user_id = tickets.user_id
WHERE status = 'open'
  AND priority = 'high';


-- 5. Identify users who have never submitted a support ticket.

SELECT users.user_id, name, email
FROM users
LEFT JOIN tickets
  ON users.user_id = tickets.user_id
WHERE ticket_id IS NULL;
