-- Cho biết top 10% sinh viên có ngày sinh nhỏ nhất.
Select TOP 10 Percent With Ties 
	Id,
	FullName,
	Day(BirthDate) as BirthDay
From Student
Order by
	BirthDay ASC

-- Cho biết top 5 sinh viên có tên dài nhất. Hiển thị cả các sinh viên tên cùng độ dài thỏa mãn.
Select TOP 5 With Ties
	Id,
	FullName,
	LEN(FullName) as Name
From Student
Order by
	Name DESC

﻿-- Cho biết top 3 môn học có số tiết học nhiều nhất.
Select Top 3 With Ties *
From Subject
Order by
	NumOfLesson DESC

﻿-- Cho biết top 20% các môn học có số tín chỉ nhiều nhất.
Select Top 20 Percent With Ties *
From Subject
Order by 
	Credit DESC