﻿-- Cho biết thông tin môn học có số tín chỉ là 3.
SELECT * 
From Subject
Where 
	Subject.Id In (
	Select Subject.Id
	From Subject
	Where Credit = 3
	)

﻿-- Cho biết thông tin các môn học được đăng ký bởi sinh viên mã X 
-- và thời gian đăng ký tương ứng
Select
	Student.FullName,
	Student.Id,
	Subject.*,
	Register.RegisterTime
From
	Subject,Student,Register
Where	
	Student.Id = 'B25DCCN101' and
	Student.Id = Register.StudentId and
	Subject.Id = Register.SubjectId and
	Subject.Id In (
		Select SubjectId
		From Register
		Where StudentId = 'B25DCCN101'
	)
	
﻿-- Cho biết thông tin các sinh viên đăng ký các môn học có 3 tín chỉ.
Select
	Student.*,
	Register.RegisterTime
From 
	Student,Register,Subject
Where
	Student.Id = Register.StudentId And
	Subject.ID = Register.SubjectId And 
	Subject.Id In (
		Select Id
		From Subject
		Where Credit = 3
	)

﻿-- Cho biết thông tin các sinh viên có điểm TB >= 3.2 
-- và đăng ký các môn học có số tín chỉ >= 3
SELECT 
    Student.*,
    Register.RegisterTime
FROM 
    Student, Register, Subject
WHERE
    Student.Gpa >= 3.2
    AND Student.Id = Register.StudentId
    AND Register.SubjectId = Subject.Id 
    AND Subject.Id IN (
        SELECT Id
        FROM Subject
        WHERE Credit >= 3
    );

﻿-- Cho biết các sinh viên không đăng ký bất kì môn học nào.
Select
	Student.*
From Student
Where Student.Id Not in (
	Select StudentId
	From Register
)