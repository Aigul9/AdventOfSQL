--
-- Advent of SQL - Day 1 Data
--
-- This file creates and populates the wish_list table
-- for day 1 of the Advent of SQL challenge by Database School.
--
-- Usage: Run this file in any SQL client (TablePlus, pgAdmin, etc.)
--

-- Clean up if tables exist (in correct order due to foreign key)
DROP TABLE IF EXISTS wish_list CASCADE;

--
-- wish_list table
--

CREATE TABLE wish_list (
   id          BIGSERIAL PRIMARY KEY,
   child_name  TEXT,
   raw_wish    TEXT
);
