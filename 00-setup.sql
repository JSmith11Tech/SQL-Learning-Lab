-- SQL Learning Lab: Setup
-- Create the sample users and tickets tables used throughout this repository.
-- Insert simulated SaaS support data for practicing queries and investigations.

CREATE TABLE users (
  user_id INTEGER PRIMARY KEY,
  name TEXT,
  email TEXT
);

CREATE TABLE tickets (
  ticket_id INTEGER PRIMARY KEY,
  user_id INTEGER,
  issue_type TEXT,
  priority TEXT,
  status TEXT,
  created_at TEXT,
  resolution_minutes INTEGER,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);


INSERT INTO users (user_id, name, email)
VALUES
  (1, 'Maya Chen', 'maya@example.com'),
  (2, 'Jordan Lee', 'jordan@example.com'),
  (3, 'Priya Shah', 'priya@example.com'),
  (4, 'Marcus Reed', 'marcus@example.com'),
  (5, 'Elena Torres', 'elena@example.com'),
  (6, 'Noah Brooks', 'noah@example.com');


INSERT INTO tickets (
  ticket_id,
  user_id,
  issue_type,
  priority,
  status,
  created_at,
  resolution_minutes
)
VALUES
  (101, 1, 'login', 'high', 'open', '2026-01-04', 75),
  (102, 1, 'billing', 'medium', 'closed', '2026-01-06', 35),
  (103, 2, 'login', 'critical', 'open', '2026-01-09', 95),
  (104, 2, 'sync', 'high', 'open', '2026-01-12', 65),
  (105, 2, 'login', 'medium', 'closed', '2026-01-15', 25),
  (106, 3, 'billing', 'low', 'closed', '2026-01-18', 20),
  (107, 3, 'access', 'high', 'closed', '2026-01-20', 50),
  (108, 4, 'sync', 'high', 'open', '2026-01-22', 80),
  (109, 4, 'billing', 'medium', 'open', '2026-01-24', 45),
  (110, 4, 'login', 'critical', 'open', '2026-01-26', 120),
  (111, 5, 'access', 'low', 'closed', '2026-01-28', 15),
  (112, 5, 'login', 'high', 'open', '2026-01-30', 70);
