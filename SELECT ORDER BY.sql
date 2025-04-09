﻿-- Sắp xếp danh sách môn học theo độ dài tên môn học tăng dần.
Select * From Subject
Order by
	LEN(Name) ASC

﻿-- Sắp xếp danh sách môn học theo số tín chỉ giảm dần, tên tăng dần.
Select * From Subject
Order by 
	Credit DESC,
	Name ASC

﻿-- Cho biết mã, tên môn học trong đó sắp xếp theo số tiết tăng dần.
Select 
	Id,
	Name,
	NumOfLesson
From Subject
Order by
	NumOfLesson ASC

﻿-- Cho biết mã, tên môn học, số tín chỉ của các môn học sắp xếp theo thứ tự từ điển(*) của loại môn học.
Select 
	Id,
	Name,
	Credit
From Subject
Order by
	Type

	