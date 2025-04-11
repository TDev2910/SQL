-- Cho biết thông tin các sinh viên có chữ 'h' và học CNTT
Select *
From Student
Where FullName Like '%h%' and Major = 'CNTT'

-- Cho biết thông tin các sinh viên học CNTT và có điểm TB >= 3.60
Select *
From Student
Where Gpa >=3.60 and Major = 'CNTT'
Order by 
	Gpa DESC

﻿-- Hãy cho biết các sinh viên học CNTT và có điểm TB không vượt quá 3.50?
Select *
From Student
Where Major = 'CNTT' And Gpa <= 3.50
Order by
	Gpa Desc

-- Hãy cho biết sinh viên mã X đăng ký những môn học nào?
Select 
	Subject.Name	
From 
	Subject,Register
Where 
	Register.StudentId ='B25DCCN101' And Subject.Id = Register.SubjectId

﻿-- Hãy cho biết những sinh viên nào đăng ký khóa học C++?
Select	
	Student.FullName
From
	Subject,Student,Register
Where 
	Subject.Name = 'C++' and Subject.Id = Register.SubjectId AND Register.StudentId = Student.Id

-- Hãy cho biết mã môn học sinh viên mã " B25DCCN101 " đăng ký và thời gian đăng ký mỗi môn học đó 
Select
	Register.SubjectId, Register.RegisterTime
From	
	Register
Where
	Register.StudentId = 'B25DCCN101'

-- Hãy cho biết tên môn học sinh viên mã " B25DCCN101 " đăng ký và thời gian đăng ký mỗi môn học đó 
Select 
	Subject.Name, Register.RegisterTime
From 
	Subject,Register
Where
	Register.StudentId = 'B25DCCN101' And Subject.Id = Register.SubjectId

--﻿ Hãy cho biết các sinh viên học CNTT và sống tại Hà Nội?
Select *
From Student	
Where Major = 'CNTT' And Address = N'Hà Nội'

﻿-- Hãy cho biết top 3 sinh viên đầu tiên đăng ký môn học C#?
-- Cach 1
SELECT TOP 3 WITH TIES
    s.*,                 
    r.RegisterTime         
FROM
    Student s,
    Register r,
    Subject sj
WHERE
    s.Id = r.StudentId          
    AND r.SubjectId = sj.Id     
    AND sj.Name = N'C#'         
ORDER BY
    r.RegisterTime ASC   
-- Cach 2
Select TOP 3 WITH TIES 
	Student.*,
	Register.RegisterTime
From 
	Student,Register,Subject	
Where 
	Subject.Name = 'C#' and 
	Subject.Id = Register.SubjectId and
	Register.StudentId = Student.Id
Order by
	Register.RegisterTime ASC

﻿-- Hãy cho bết top 3 môn học đầu tiên mà sinh viên  " B25DCCN101 " đăng ký
SELECT TOP 3 WITH TIES
    Subject.*,
	Register.RegisterTime
From
	Subject,Register,Student
Where
	Student.Id = 'B25DCCN101' and 
	Subject.Id = Register.SubjectId and
	Student.Id = Register.StudentId
Order by
	Register.RegisterTime ASC
	

