-- =====================================================
-- WEEK 8 ASSIGNMENT: MySQL Database Backup using mysqldump
-- Database: sales
-- =====================================================

-- Question 1: Creating a Complete Database Backup
-- Command:
-- mysqldump -u root -p sales > sales_backup.sql

-- Explanation:
-- mysqldump = MySQL backup utility
-- -u root = login as user 'root'
-- -p = prompt for password (keeps password secure, not typed in plain text)
-- sales = the database to back up
-- > sales_backup.sql = save all output into this file
-- This creates a complete backup: CREATE DATABASE, CREATE TABLE and INSERT data.
-- Regular backups are important because they protect against data loss from
-- accidental deletion, hardware failure, corruption or failed updates.
-- With a backup we can restore the database quickly and continue work.

-- Question 2: Backing Up All Databases
-- Command:
-- mysqldump -u root -p --all-databases > all_databases_backup.sql

-- Explanation:
-- --all-databases = export EVERY database on the server, not just sales.
-- -u root = login as user 'root'
-- -p = prompt for password
-- > all_databases_backup.sql = save output into this file
-- Backing up all databases before migration is important because migration
-- moves the whole server. If we only backup sales, we lose other databases,
-- users, permissions and settings. A full backup ensures nothing is lost
-- and we can restore everything on the new server.