-- Cho biết thông tin các sinh viên thỏa mãn các điều kiện
-- Hoặc sinh vào tháng 5 có điểm TB >= 3.2 
Select *
From Student
Where Gpa >= 3.2 or 
	MONTH(BirthDate) = 5

-- Cho biết các môn học thỏa mãn : hoặc có số tin chỉ >=4 hoặc có độ dài tên môn học >=6 kí tự
Select * 
From Subject
Where Credit >=4 or LEN(Name) >=6

﻿-- Hãy cho biết thông tin các sinh viên sinh vào tháng 6 
-- hoặc tháng 10 sắp xếp tăng dần theo mã sinh viên.
Select *
From Student
Where MONTH(BirthDate) = 6 Or MONTH(BirthDate) = 10
Order by
	Id;

-- Hãy cho biết thông tin các môn học có số tín chỉ > 3 
-- hoặc có số tiết học từ 45 trở lên.
Select *
From Subject
Where Credit >3 Or NumOfLesson > 45

﻿-- Hãy cho biết thông tin các sinh viên thỏa mãn điều kiện: 
-- hoặc có tên dài nhất hoặc có điểm TB cao nhất.
Select
    Id,FullName,Gpa
From
	Student
Where
	Gpa = (Select Max(Gpa) from Student)
	Or
	Len(FullName) =(Select Max(Len(FullName)) From Student)

