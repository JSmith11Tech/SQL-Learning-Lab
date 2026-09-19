-- Aggregate function practice using COUNT, SUM, MAX, MIN,
-- AVG, ROUND, GROUP BY, and HAVING.

-- Challenge 1: 
-- Count the total number of tickets.

-- Table:

-- tickets
-- ticket_id
-- user_id
-- issue_type
-- priority
-- status
-- created_at
-- resolution_minutes

SELECT COUNT(*)
FROM tickets;



-- Challenge 2:
-- Show the average resolution time for all tickets.
-- Round the result to 2 decimal places.

SELECT ROUND(AVG(resolution_minutes), 2)
FROM tickets;



-- Challenge 3:
-- Show the shortest and longest resolution time.

SELECT MAX(resolution_minutes) AS longest_resolution,
  MIN(resolution_minutes) AS shortest_resolution
FROM tickets;



-- Challenge 4:
-- Count how many tickets exist for each priority level.

SELECT priority,
  COUNT(*) AS ticket_count
FROM tickets
GROUP BY priority;



-- Challenge 5:
-- Show each priority level that has more than 5 tickets.
-- Include the priority and the number of tickets.

SELECT priority, COUNT(*) AS ticket_count
FROM tickets
GROUP BY priority
HAVING COUNT(*) > 5;

























