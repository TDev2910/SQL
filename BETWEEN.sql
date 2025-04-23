-- Cho biết thông tin các sinh viên có ngày sinh 1/4 đến 30/6
Select *
From Student	
Where MONTH(BirthDate) Between 1 and 6

-- Cho biết thông tin các sinh viên có điểm TB từ 3.2 đến 3.6
Select *
From Student
Where Gpa Between 3.2 and 3.6
Order by
	Gpa DESC

-- Cho biết môn học có độ dài tên kí tự từ 1 - 6
Select * 
From Subject
Where Len(Name) Between 1 and 6

﻿-- Cho biết các sinh viên đăng ký môn học trong khoảng thời gian từ 00:00 đến  01:59.
Select Distinct 
	Student.*,Register.RegisterTime
From Student,Register
Where Student.Id = Register.StudentId 
	And DATEPART(HOUR , Register.RegisterTime) Between 0 and 1
	
﻿-- Cho biết các môn học được đăng ký trong thời gian từ 01:00 đến 01:30.
-- lời giải: chỉ xét các môn học có thời gian đăng ký tính theo giờ = 1
-- và phút từ 0 đến 30
Select Distinct 
	Subject.* , Register.RegisterTime
From Subject,Register
Where Register.SubjectId = Subject.Id 
	And DATEPART(HOUR, Register.RegisterTime) = 1
	And DATEPART(MINUTE, Register.RegisterTime ) Between 0 and 30

﻿-- Cho biết các sinh viên không đăng ký môn học trong thời gian từ 00:00 đến 01:59
-- lời giải: chỉ xét các sinh viên có đăng ký môn học nhưng loại bỏ các sinh viên có đăng ký trong
-- thời gian từ 0h00 đến 1h59'
Select Distinct 
	Student.*,Register.RegisterTime
From Student,Register
Where Student.Id = Register.StudentId 
	And DATEPART(HOUR,Register.RegisterTime) Not Between 0 and 1

﻿-- Cho biết các môn học không được sinh viên nào đăng ký trong khoảng thời gian từ 01:00 đến 02:59
-- lời giải: chỉ xét các môn học được đăng ký và không có đăng ký nào trong thời gian từ 1h00 đến 2h59
SELECT DISTINCT Subject.*
FROM Subject
WHERE NOT EXISTS (
    SELECT 1
    FROM Register
    WHERE Register.SubjectId = Subject.Id
      AND DATEPART(HOUR, Register.RegisterTime) BETWEEN 1 AND 2
);