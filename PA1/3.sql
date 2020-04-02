create view student_advisor as select student.ID as s_ID, student.dept_name as s_dept_name, advisor.i_ID as a_ID  from student natural join advisor where student.ID = advisor.s_ID; 
select instructor.ID as ID, instructor.name as name, student_advisor.s_dept_name as dept_name, count(student_advisor.s_ID) from instructor left outer join student_advisor on instructor.ID = student_advisor.a_ID group by instructor.ID;
