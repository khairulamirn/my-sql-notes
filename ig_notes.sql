-- STRUCTURED QUERY LANGUAGE
-- storing, manipulating, and retrieving data
-- SQL keywords are NOT case sensitive: select is the same as SELECT
-- DDL - DATA DEFINITION LANGUAGE (Create, Alter, Drop, Truncate)
-- DML - DATA MANIPULATION LANGUAGE (Insert, Update, Delete)
-- DCL - DATA CONTROL LANGUAGE (Grant, Revoke)
-- DQL - DATA QUERY LANGUAGE (Select, Join, Union, Intersect, Except)
-- TCL - TRANSACTION CONTROL LANGUAGE (Commit, Rollback, Savepoint)  
-- DTL - DATA TRANSFER LANGUAGE (Export, Import)

-------------------------------------
-- DDL COMMANDS
-------------------------------------

CREATE DATABASE [database_name];

DROP DATABASE [database_name];

CREATE TABLE [table_name];

DROP TABLE [table_name];

ALTER TABLE ADD COLUMN [column_name];

ALTER TABLE DROP COLUMN [column_name];

ALTER TABLE RENAME COLUMN [column_name] TO [new_column_name];

ALTER TABLE RENAME TO [new_table_name]; 

ALTER TABLE MODIFY COLUMN [column_name] TYPE [data_type]; 
-- data type such as VARCHAR, INT, FLOAT, BOOLEAN, DATE, TIME, DATETIME, etc.

INSERT INTO [table_name] VALUES ([column_name], [column_name], [column_name], ...);

SELECT [column_name] FROM [table_name];

SELECT FUNCTION [column_name] FROM [table_name];

SELECT DISTINCT [column_name] FROM [table_name]; -- for unique values no repeatation

UPDATE [database_name].[table_name] SET [column_name] = [value] WHERE [column_name] = [value]; 

DELETE FROM [database_name].[table_name] WHERE [column_name] = [value];

CREATE INDEX [index_name] ON [database_name].[table_name]([column_name]);

--types of index 
-- Single Column, Multiple Column, Full Column, Unique Column

DROP INDEX [index_name];

CREATE UNIQUE INDEX [index_name] ON [database_name].[table_name]([column_name]);

--continue then

CREATE TABLE world (
    name VARCHAR(255) NOT NULL,
    continent VARCHAR(100) NOT NULL,
    area BIGINT NOT NULL,
    population BIGINT NOT NULL, -- BIGINT is a 64-bit integer
    gdp NUMERIC(15, 2), -- precision of 15, scale of 2
);