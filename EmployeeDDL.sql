USE [anupam]
GO
CREATE table
    employee (ID integer, name nvarchar (20), salary float)
    --Making Primary key 
CREATE table
    employee (
        ID integer not null primary key,
        name nvarchar (20),
        salary float
    )
CREATE table
    gender (
        genderid integer not null primary key,
        gender nvarchar (20)
    )
    --Altering Table to add genderid
ALTER table employee add genderid integer
