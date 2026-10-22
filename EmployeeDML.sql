USE [anupam]
GO


INSERT INTO [dbo].[employee]
           ([ID]
           ,[name]
           ,[salary])
     VALUES
           (1
           ,'joe'
           ,1000)
GO


select * from employee

DELETE FROM [dbo].[employee]
      WHERE ID=1
GO


INSERT INTO [dbo].[employee] 
           ([ID],[name],[salary])
     VALUES
           (4,'joe4',30000)
GO



select * from employee order by salary desc

select max  (salary) from employee where salary< 
(select max (salary) from employee )

select * from employee 
Update employee set name = 'joel' 
where ID=2

Update employee set name = 'ku'
where name='joe4'

Update employee set name = 'Ar', salary=9000
where ID=3

Insert into gender values
(1,'male')
(2,'female')
(3, 'other')

update employee set genderid=1
Where ID in (1,3)

update employee set genderid=2
Where ID in (2,4)

select name,gender from employee, gender
Where employee.genderid=gender.genderid

