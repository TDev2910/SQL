Select	
	Name,Credit
From Subject
Order by
	Credit DESC

-- Lấy 4 môn học có số tín chỉ cao nhất.
Select 
	Name,Credit
From Subject
Order by 
	Credit DESC
OFFSET 0 Rows
Fetch Next 4 Rows Only

﻿-- Lấy 5 môn học sau 5 môn học đầu tiên có số tiết học cao nhất.
Select 
	Name,NumOfLesson
From Subject
Order by 
	NumOfLesson DESC
OFFSET 5 ROWS
FETCH NEXT 5 ROWS ONLY
﻿-- Lấy 5 môn học từ vị trí k bất kỳ theo thứ tự tên môn học từ ngắn nhất đến dài nhất.
-- giả sử k = 4, ta bỏ qua k-1 = 3 dòng đầu tiên tìm được theo thứ tự độ dài tên môn học tăng dần
SELECT 
	*
FROM 
	Subject 
ORDER BY 
	LEN(Name) ASC	
OFFSET 3 ROWS 
FETCH NEXT 5 ROWS ONLY
--Lấy 5 sinh viên có GPA từ cao thứ 6 đến thứ 10
Select 
	FullName,Gpa
From Student
Order by
	GPA DESC
OFFSET 5 Rows
FETCH NEXT 5 ROWS ONLY
--Lấy 3 môn học có tên ngắn thứ 4 đến thứ 6
Select 
	Name
From Subject
Order by
	Len(Name) ASC
OFFSET 3 ROWS
Fetch NEXT 3 ROWS ONLY
--Lấy sinh viên từ vị trí thứ 11 đến 20 theo tên A–Z
SELECT 
    FullName
FROM Student
ORDER BY 
    FullName ASC
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY;
	