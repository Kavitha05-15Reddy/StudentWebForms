--create
create table Student_Form_Table
(
	StudentID int primary key,
	Name varchar(100),
	Image varchar(100),
	Gender varchar(100),
	Email varchar(100),
	MobileNo varchar(100),
	Address varchar(100),
	DateOfJoining date,
	Branch varchar(100)
)

select * from Student_Form_Table

--Insert
create or alter procedure Student_Registration_SP
@StudentID int,
@Name varchar(100),
@Image varchar(100),
@Gender varchar(100),
@Email varchar(100),
@MobileNo varchar(100),
@Address varchar(100),
@DateOfJoining date,
@Branch varchar(100)
as
begin
	insert into Student_Form_Table(StudentID,Name,Image,Gender,Email,MobileNo,Address,DateOfJoining,Branch)
	values(@StudentID,@Name,@Image,@Gender,@Email,@MobileNo,@Address,@DateOfJoining,@Branch)
end

execute Student_Registration_SP 1,'Kavitha','kavitha.jpeg','Female','kavithareddy3379@gmail.com','7995640903','1/1A,AdireddyPalli(v),Mydukur(m),Kadapa(d),AP','2021/12/31','MCA'

--Retrieve
create or alter procedure Student_List_SP
as
begin
	select * from Student_Form_Table
end

execute Student_List_SP

--Update
create or alter procedure Student_Update_SP
@StudentID int,
@Name varchar(100),
@Image varchar(100),
@Gender varchar(100),
@Email varchar(100),
@MobileNo varchar(100),
@Address varchar(100),
@DateOfJoining date,
@Branch varchar(100)
as
begin
	update Student_Form_Table set Name=@Name,Image=@Image,Gender=@Gender,Email=@Email,MobileNo=@MobileNo,Address=@Address,DateOfJoining=@DateOfJoining,Branch=@Branch where StudentID=@StudentID
end

--Delete
create or alter procedure Student_Delete_SP
@StudentID int
as
begin
	delete from Student_Form_Table where StudentID=@StudentID
end

--Login
create or alter procedure Student_Login_SP
@StudentID int,
@Name varchar(100)
as
begin
	select * from Student_Form_Table where StudentID=@StudentID and Name=@Name
end

--Login-Update
create or alter procedure GetById_SP
@StudentID int
as
begin
	select * from Student_Form_Table where StudentID=@StudentID
end

--SearchByName
create or alter procedure GetByName_SP
@Name varchar(100)
as
begin
	select * from Student_Form_Table where Name=@Name
end

--SortedListByName
create or alter procedure SortedListByName_SP
as
begin
	select * from Student_Form_Table order by Name asc
end

--Review
--Gender
create or alter procedure Gender_SP
@Name varchar(100),
@Gender varchar(100) 
as
begin
	select * 
	from Student_Form_Table 
	where Gender=@Gender and Name like @Name+'%'
	order by Name asc
end

--Dates
create or alter procedure Date_SP
@DateOfJoining1 date,
@DateOfJoining2 date
as
begin
	select * from Student_Form_Table where DateOfJoining between @DateOfJoining1 and @DateOfJoining2
end



