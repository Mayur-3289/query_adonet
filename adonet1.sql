CREATE TABLE Student
(
Id int PRIMARY KEY IDENTITY (1,1),
Name nvarchar (255)NULL,
Age int NULL,
Address nvarchar (255) NULL	
)
INSERT INTO Student (Name,Age,Address) VALUES('Param',22,'PUNE')
INSERT INTO Student (Name,Age,Address) VALUES('SONA',22,'mumbai')
INSERT INTO Student (Name,Age,Address) VALUES('Pratham',23,'Pune')
INSERT INTO Student (Name,Age,Address) VALUES('Shivani',21,'Delhi')
INSERT INTO Student (Name,Age,Address) VALUES('Manali',22,'Pune')

select * from Student

update Student set Address='Goa' where Id=1
--sp to get student by id


CREATE or ALTER proc usp_StudentDetail(@ID INT)
AS
BEGIN
SELECT * FROM STUDENT
WHERE Id=@ID
END

