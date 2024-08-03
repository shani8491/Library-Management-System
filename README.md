# Library-Management-System
This project is a Library Management System built using MySQL. It manages and tracks information related to books, employees, customers, and transactions within a library. The database includes tables for branches, employees, books, customers, and both issue and return statuses, with queries to perform various data retrieval tasks.

## Library Management System
This project is a Library Management System built using MySQL. It helps manage and track information about books, employees, branches, and customer transactions within a library. The system is designed to efficiently handle the inventory of books, employee records, and the issue/return processes.
Project Structure
The database includes the following tables:
1. Branch:
   - `Branch_no` (Primary Key)
   - `Manager_Id`
   - `Branch_address`
   - `Contact_no`
2. Employee:
   - `Emp_Id` (Primary Key)
   - `Emp_name`
   - `Position`
   - `Salary`
   - `Branch_no` (Foreign Key referencing `Branch_no` in `Branch`)
3. Books:
   - `ISBN` (Primary Key)
   - `Book_title`
   - `Category`
   - `Rental_Price`
   - `Status` (Available/Not Available)
   - `Author`
   - `Publisher`
4. Customer:
   - `Customer_Id` (Primary Key)
   - `Customer_name`
   - `Customer_address`
   - `Reg_date`
5. IssueStatus:
   - `Issue_Id` (Primary Key)
   - `Issued_cust` (Foreign Key referencing `Customer_Id` in `Customer`)
   - `Issued_book_name`
   - `Issue_date`
   - `Isbn_book` (Foreign Key referencing `ISBN` in `Books`)
6. ReturnStatus:
   - `Return_Id` (Primary Key)
   - `Return_cust`
   - `Return_book_name`
   - `Return_date`
   - `Isbn_book2` (Foreign Key referencing `ISBN` in `Books`)
SQL Queries
The project includes SQL queries to perform the following tasks:
1. Retrieve the book title, category, and rental price of all available books.
2. List employee names and their respective salaries in descending order of salary.
3. Retrieve the book titles and the corresponding customers who have issued those books.
4. Display the total count of books in each category.
5. Retrieve employee names and their positions for employees with salaries above Rs.50,000.
6. List customer names who registered before 2022-01-01 and have not issued any books yet.
7. Display the branch numbers and the total count of employees in each branch.
8. Display the names of customers who have issued books in June 2023.
9. Retrieve book titles from the book table containing the keyword "history."
10. Retrieve branch numbers along with the count of employees for branches having more than 5 employees.
11. Retrieve the names of employees who manage branches and their respective branch addresses.
12. Display the names of customers who have issued books with a rental price higher than Rs. 25.
To use this project, follow these steps:
1. Download the project files from GitHub. 
2. Database Creation: Use the provided SQL scripts to create the `library` database and populate the tables. 
3. Query Execution: Run the SQL queries to interact with the database and retrieve specific information.
