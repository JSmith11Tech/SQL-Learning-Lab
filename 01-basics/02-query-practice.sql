-- Practice queries using SELECT, WHERE, LIKE, BETWEEN,
-- AND, OR, ORDER BY, LIMIT, DISTINCT, AS, IS NULL, and CASE.

-- Challenge 1:
-- Show only open, high-priority tickets.
-- Sort newest tickets first.
-- Return only the first 5 results.

--You have a table called tickets with these columns:
  
--ticket_id
--user_id
--issue_type
--priority
--status
--created_at


SELECT *
FROM tickets
WHERE status = 'Open'
  AND priority = 'High'
ORDER BY created_at DESC
LIMIT 5;



-- Challenge 2:
-- Show tickets where the issue type contains the word "login"
-- and the ticket is still open.
-- Sort the results by priority.

SELECT *
FROM tickets
WHERE issue_type LIKE '%login%'
  AND status = 'Open'
ORDER BY priority;



-- Challenge 3:
-- Show each unique issue type only once.
-- Rename the output column to issue_category.

SELECT DISTINCT issue_type AS issue_category
FROM tickets;



-- Challenge 4:
-- Show tickets created between January 1, 2026 and January 31, 2026.
-- Include only tickets with either High or Critical priority.
-- Return only the first 10 results.

SELECT *
FROM tickets
WHERE created_at BETWEEN '2026-01-01' AND '2026-01-31'
  AND (priority = 'High' OR priority = 'Critical')
LIMIT 10;



-- Challenge 5:
-- Show each ticket's ticket_id and priority.
-- Add a new output column called handling.
-- If priority is 'Critical', label it 'Escalate'.
-- Otherwise label it 'Standard'.

SELECT ticket_id, priority, 
  CASE
    WHEN priority = 'Critical' THEN 'Escalate'
    ELSE 'Standard'
END AS Handling
FROM tickets;




















