create table student(
student_no int primary key,
student_name varchar,
major varchar);

create table intructors(
instructor_no int primary key,
instructor_name varchar,
instructor_location varchar);

CREATE TABLE course (
    course_no INT PRIMARY KEY,
    instructor_no INT,
    course_name VARCHAR
    );

create table grade (
student_no int ,
course_name varchar ,
grade int 
)