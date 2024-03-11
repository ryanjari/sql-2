1. Normalize this table from 1NF to 3NFStudent_Grade_Report 
(StudentNo, StudentName, Major, CourseNo, CourseName, InstructorNo, InstructorName, InstructorLocation, Grade)
(HINT: in 3NF, there will be 4 tables)
2. Create ERD based on the table you normalized 
3. create table students for school database, consist these columns:
id (integer, PK, auto increment)
first_name (varchar, not null)
last_name (varchar, default null)
email (varchar, unique, not null)
age (integer, default value 18)
gender (varchar, check constraint to allow only 'male' or 'female')
date_of_birth (date, not null)
created_at (timestamp with time zone, default value now)
4. Use movie dataset and create stored procedure or function for counting movie based  on genre. Use genre as a parameter, and return the count of movie
5. Use movie dataset, write one optimized query (using the tips for revamp query). You are free to create any query.
6. Use the ninja dataset, write a query that return nama and desa, use email as a filter. Create a proper index to satisfy the query, provide the explain result before and after index creation. (do set enable_seqscan = off first)
7. Find the most favorite (highest rating) for each genre (use rank() window function)





