
-- ==========================================================
-- WEEK 8 ASSIGNMENT: MYSQL DATABASE BACKUP AND RESTORE
-- Topic: Database Backup Using mysqldump
-- Database: sales
-- ==========================================================


-- ==========================================================
-- QUESTION 1: CREATING A COMPLETE DATABASE BACKUP
-- ==========================================================

-- Command:
-- mysqldump -u root -p sales > sales_backup.sql

-- Explanation:
-- mysqldump is a MySQL utility used to create database backups.
-- -u root specifies the MySQL username.
-- -p prompts the user to enter the database password.
-- sales is the database being backed up.
-- > redirects the backup output into a file.
-- sales_backup.sql is the name of the backup file.

-- Importance of regular database backups:
-- 1. Protects important information from accidental loss.
-- 2. Helps recover data after hardware or software failure.
-- 3. Protects against accidental deletion of records.
-- 4. Supports disaster recovery.
-- 5. Makes database migration easier.


-- ==========================================================
-- QUESTION 2: BACKING UP ALL DATABASES
-- ==========================================================

-- Command:
-- mysqldump -u root -p --all-databases > all_databases_backup.sql

-- Explanation:
-- mysqldump creates backups of MySQL databases.
-- -u root specifies the MySQL username.
-- -p prompts the user for the database password.
-- --all-databases exports all databases on the server.
-- > redirects the backup output into a file.
-- all_databases_backup.sql is the backup file.

-- Importance of backing up all databases before migration:
-- 1. Ensures that all databases are preserved.
-- 2. Prevents loss of important business information.
-- 3. Makes transferring data to a new server easier.
-- 4. Helps restore databases if migration fails.
-- 5. Maintains business continuity.


-- ==========================================================
-- QUESTION 3: CREATING A DATA-ONLY DATABASE BACKUP
-- ==========================================================

-- Command:
-- mysqldump -u root -p --no-create-info sales > sales_data_only_backup.sql

-- Explanation:
-- mysqldump creates a backup of database data.
-- -u root specifies the MySQL username.
-- -p prompts the user for the database password.
-- --no-create-info excludes CREATE TABLE statements.
-- sales is the database being backed up.
-- > redirects the output into a file.
-- sales_data_only_backup.sql is the backup file.

-- Importance of data-only backups:
-- 1. Backs up records without table creation statements.
-- 2. Helps transfer data into existing database tables.
-- 3. Useful when database structures already exist.
-- 4. Supports data recovery.
-- 5. Helps with database migration.


-- ==========================================================
-- ADDITIONAL SECTION: RESTORING A DATABASE BACKUP
-- ==========================================================

-- Restore the sales database:
-- mysql -u root -p sales < sales_backup.sql

-- Restore all databases:
-- mysql -u root -p < all_databases_backup.sql

-- Explanation:
-- mysql is used to restore database backup files.
-- -u root specifies the MySQL username.
-- -p prompts for the database password.
-- < reads the backup file and imports its contents.


-- ==========================================================
-- CONCLUSION
-- ==========================================================

-- Database backups are important because they protect
-- information from loss and help recover data after failure.
-- mysqldump allows database administrators to create complete,
-- all-database, and data-only backups.
-- Regular backups support disaster recovery, data protection,
-- and successful database migration.
