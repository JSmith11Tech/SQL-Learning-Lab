# SQL Learning Lab

A hands-on SQL portfolio project focused on using relational data to investigate realistic SaaS support scenarios.

This repository documents my progression from foundational SQL queries into support-focused investigations involving ticket triage, customer impact, and resolution performance.

## Skills Demonstrated

- SELECT and column selection
- WHERE filtering with AND / OR
- LIKE, BETWEEN, IS NULL, and DISTINCT
- ORDER BY and LIMIT
- CASE expressions
- Aggregate functions: COUNT, MIN, MAX, AVG, ROUND
- GROUP BY and HAVING
- Primary and foreign key relationships
- JOIN and LEFT JOIN
- Support-focused data investigation

## Simulated Support Data

The exercises and investigations use a simple SaaS support model built around two related tables:

### users

- user_id
- name
- email

### tickets

- ticket_id
- user_id
- issue_type
- priority
- status
- created_at
- resolution_minutes

`users.user_id` represents the primary key for users, while `tickets.user_id` acts as the foreign key connecting support tickets to the users who submitted them.

## Repository Structure

### 00-setup.sql

Creates the sample `users` and `tickets` tables and inserts simulated SaaS support records so the queries in this repository can be run against a consistent dataset.

### 01-basics

Foundational SQL exercises covering querying, filtering, aggregation, and relational data.

- `01-select-basics.sql` - basic data retrieval
- `02-query-practice.sql` - filtering, sorting, aliases, ranges, and CASE
- `03-aggregate-practice.sql` - aggregate functions, GROUP BY, and HAVING
- `04-join-practice.sql` - JOIN, LEFT JOIN, and key relationships

### 02-support-investigations

Practical investigations designed around common SaaS support questions.

#### 01 - Ticket Triage

Investigates the support queue to:

- identify open high-priority tickets
- prioritize recent open tickets
- connect tickets to affected users
- identify customers requiring attention
- find users with no ticket history

#### 02 - Customer Impact

Analyzes support activity to:

- identify customers submitting repeated tickets
- find common issue types
- compare average resolution times
- identify issue categories with slower resolutions
- surface customers with multiple open cases

#### 03 - Resolution Analysis

Examines ticket resolution performance to:

- identify slow resolutions
- analyze resolution-time ranges
- categorize tickets by resolution speed
- connect slow high-priority tickets to affected customers

## Purpose

This project demonstrates practical foundational SQL for technical support and application support work: understanding relational data, investigating customer issues, identifying patterns, and retrieving useful information from support records.
