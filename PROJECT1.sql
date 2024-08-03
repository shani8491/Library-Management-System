#create database
CREATE DATABASE  library;
USE library;
#create table Branch
CREATE TABLE Branch(Branch_no INT PRIMARY KEY,Manager_Id INT,Branch_address VARCHAR(100),Contact_no BIGINT);
#Insert values to table Branch
INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no) VALUES
(1, 101, 'MG Road, Ernakulam, Kochi, Kerala', 4842551234),
(2, 102, 'Vazhuthacaud, Thiruvananthapuram, Kerala', 4712555678),
(3, 103, 'Wayanad Road, Kalpetta, Kerala', 49362559012),
(4, 104, 'Mavoor Road, Kozhikode, Kerala', 4952553456),
(5, 105, 'Chinnakada, Kollam, Kerala', 4742557890),
(6, 106, 'Gandhi Nagar, Kottayam, Kerala', 4812551234),
(7, 107, 'Railway Station Rd, Thrissur, Kerala', 4872555678),
(8, 108, 'NH 66, Alappuzha, Kerala', 4772559012),
(9, 109, 'Nedumangad Rd, Neyyattinkara, Kerala', 4712553456),
(10, 110, 'Hill Palace Rd, Tripunithura, Kerala', 4842557890),
(11, 111, 'Market Rd, Palakkad, Kerala', 4912551234),
(12, 112, 'West Nada, Guruvayur, Kerala', 4872555678),
(13, 113, 'Fort Rd, Kannur, Kerala', 4972559012),
(14, 114, 'Kumarapuram, Perumbavoor, Kerala', 4842553456),
(15, 115, 'East Fort, Thiruvananthapuram, Kerala', 4712557890);
#Display table
SELECT * FROM Branch;

#Create table Employee  
CREATE TABLE Employee( Emp_Id INT PRIMARY KEY, Emp_name VARCHAR(30),Position VARCHAR(30),Salary INT,Branch_no INT, 
FOREIGN KEY(Branch_no) REFERENCES Branch(Branch_no));
#Insert values to table Employee
INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no) VALUES
(1, 'John Doe', 'Manager', 60000, 1),
(2, 'Jane Smith', 'Assistant Manager', 50000, 1),
(3, 'Raj Kumar', 'Cashier', 35000, 1),
(4, 'Emily Davis', 'Teller', 30000, 1),
(5, 'Michael Brown', 'Customer Service', 32000, 1),
(6, 'Sara Wilson', 'Loan Officer', 45000, 1), 
(7, 'Liam Johnson', 'Manager', 60000, 2),
(8, 'Olivia Martin', 'Assistant Manager', 50000, 2),
(9, 'Noah Lee', 'Cashier', 35000, 2),
(10, 'Emma Davis', 'Teller', 30000, 2),
(11, 'Sophia Garcia', 'Customer Service', 32000, 2),
(12, 'James Taylor', 'Loan Officer', 45000, 2), 
(13, 'Benjamin Moore', 'Manager', 60000, 3),
(14, 'Lucas Anderson', 'Assistant Manager', 50000, 3),
(15, 'Mia Rodriguez', 'Cashier', 35000, 3),
(16, 'Charlotte Martinez', 'Teller', 30000, 3),
(17, 'Elijah Hernandez', 'Customer Service', 32000, 3),
(18, 'Amelia Lopez', 'Loan Officer', 45000, 3), 
(19, 'Mason White', 'Manager', 60000, 4),
(20, 'Isabella Thompson', 'Assistant Manager', 50000, 4),
(21, 'Ethan King', 'Cashier', 35000, 4),
(22, 'Ava Scott', 'Teller', 30000, 4),
(23, 'Harper Adams', 'Customer Service', 32000, 4),
(24, 'Alexander Nelson', 'Loan Officer', 45000, 4), 
(25, 'William Baker', 'Manager', 60000, 5),
(26, 'Michael Gonzalez', 'Assistant Manager', 50000, 5),
(27, 'James Perez', 'Cashier', 35000, 5),
(28, 'Evelyn Turner', 'Teller', 30000, 5),
(29, 'Abigail Rivera', 'Customer Service', 32000, 5),
(30, 'Henry Brooks', 'Loan Officer', 45000, 5),  
(31, 'Aiden Price', 'Manager', 60000, 6),
(32, 'Sebastian Sanders', 'Assistant Manager', 50000, 6),
(33, 'Jackson Reed', 'Cashier', 35000, 6),
(34, 'Levi Parker', 'Teller', 30000, 6),
(35, 'Lily Cooper', 'Customer Service', 32000, 6),
(36, 'Ella Mitchell', 'Loan Officer', 45000, 6),  
(37, 'Olivia Cook', 'Manager', 60000, 7),
(38, 'Eleanor Bell', 'Assistant Manager', 50000, 8),
(39, 'Ella Morgan', 'Cashier', 35000, 9),
(40, 'Mila Peterson', 'Teller', 30000, 10),
(41, 'Aria Gray', 'Customer Service', 32000, 11),
(42, 'Zoey Bennett', 'Loan Officer', 45000, 12);

#Display table
SELECT * FROM Employee;
#Create table Books
CREATE TABLE Books(ISBN BIGINT PRIMARY KEY,Book_title VARCHAR(70),Category VARCHAR(70),
Rental_Price INT, Status VARCHAR(10),Author VARCHAR(70),Publisher VARCHAR(70));
#Insert data
INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher) VALUES
(9780451524935, '1984', 'Dystopian', 5, 'YES', 'George Orwell', 'Secker & Warburg'),
(9780743273565, 'The Great Gatsby', 'Classic', 24, 'YES', 'F. Scott Fitzgerald', 'Scribner'),
(9781501128034, 'To Kill a Mockingbird', 'Classic', 45, 'YES', 'Harper Lee', 'J.B. Lippincott & Co.'),
(9780385472579, 'The Alchemist', 'Philosophical', 25, 'NO', 'Paulo Coelho', 'HarperTorch'),
(9780307474278, 'The Road', 'Post-Apocalyptic', 60, 'YES', 'Cormac McCarthy', 'Alfred A. Knopf'),
(9780547928227, 'The Hobbit', 'Fantasy', 50, 'NO', 'J.R.R. Tolkien', 'George Allen & Unwin'),
(9780141439600, 'Pride and Prejudice', 'Romance', 40, 'YES', 'Jane Austen', 'T. Egerton'),
(9780140449266, 'War and Peace', 'Historical', 10, 'NO', 'Leo Tolstoy', 'The Russian Messenger'),
(9780307588371, 'Gone Girl', 'Thriller', 50, 'YES', 'Gillian Flynn', 'Crown Publishing Group'),
(9780140177398, 'Of Mice and Men', 'Classic', 35, 'YES', 'John Steinbeck', 'Covici Friede'),
(9780452284234, 'Fahrenheit 451', 'Dystopian', 12, 'NO', 'Ray Bradbury', 'Ballantine Books'),
(9780439139601, 'Harry Potter and the Goblet of Fire', 'Fantasy', 25, 'YES', 'J.K. Rowling', 'Bloomsbury'),
(9780061120084, 'The Secret', 'Self-help', 50, 'NO', 'Rhonda Byrne', 'Atria Books'),
(9780316769488, 'The Catcher in the Rye', 'Classic', 5, 'YES', 'J.D. Salinger', 'Little, Brown and Company'),
(9781451673319, 'The Great Alone', 'Historical Fiction', 60, 'YES', 'Kristin Hannah', 'St. Martin''s Press');
#Display data
SELECT * FROM Books;
#Create table Customer
CREATE TABLE Customer(Customer_Id INT PRIMARY KEY,Customer_name VARCHAR(50), Customer_address VARCHAR(100),Reg_date DATE);
#Insert data
INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date) VALUES
(1, 'Arjun Menon', '12, MG Road, Kochi, Kerala', '2021-01-15'),
(2, 'Nisha Nair', '45, Vytilla, Ernakulam, Kerala', '2024-02-20'),
(3, 'Rahul Reddy', '78, Kowdiar, Thiruvananthapuram, Kerala', '2020-03-05'),
(4, 'Lakshmi Pillai', '32, East Fort, Thrissur, Kerala', '2020-04-12'),
(5, 'Vivek Kumar', '16, Kannur Road, Kozhikode, Kerala', '2019-05-18'),
(6, 'Meera Raj', '22, Palarivattom, Kochi, Kerala', '2024-06-21'),
(7, 'Akhil Ramesh', '9, Kadavanthra, Ernakulam, Kerala', '2024-07-01'),
(8, 'Anjali Varma', '14, Fort Kochi, Kochi, Kerala', '2021-01-25'),
(9, 'Gopal Krishna', '27, Ulloor, Thiruvananthapuram, Kerala', '2024-02-28'),
(10, 'Deepa Suresh', '51, Mavoor Road, Kozhikode, Kerala', '2024-03-15'),
(11, 'Rakesh Iyer', '35, Puthenpally, Alappuzha, Kerala', '2018-04-10'),
(12, 'Shweta Mohan', '67, Kallai, Kozhikode, Kerala', '2024-05-30'),
(13, 'Suresh Babu', '88, Kakkanad, Kochi, Kerala', '2020-06-12'),
(14, 'Priya Rajan', '20, Paravur, Ernakulam, Kerala', '2024-07-05'),
(15, 'Vishnu Nambiar', '11, Adoor, Pathanamthitta, Kerala', '2024-01-10');
#Display data
SELECT * FROM Customer; 
#Create table IssueStatus  
CREATE TABLE IssueStatus(Issue_Id INT PRIMARY KEY ,Issued_cust INT,FOREIGN KEY(Issued_cust) REFERENCES Customer(customer_id),
Issued_book_name VARCHAR(50),Issue_date DATE,Isbn_book BIGINT, FOREIGN KEY(Isbn_book) REFERENCES BOOKS(ISBN));
#Insert data into table IssueStatus  
INSERT INTO IssueStatus(Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book) VALUES
(1, 1, '1984', '2023-06-15', 9780451524935),
(2, 2, 'The Great Gatsby', '2024-07-16', 9780743273565),
(3, 3, 'The Alchemist', NULL, 9780385472579),
(4, 4, 'The Road', NULL, 9780307474278),
(5, 5, 'The Hobbit', '2021-07-19', 9780547928227),
(6, 6, 'Pride and Prejudice', '2023-06-20', 9780141439600),
(7, 7, 'Harry Potter and the Goblet of Fire', '2024-07-21', 9780439139601),
(8, 8, 'War and Peace', NULL, 9780140449266),
(9, 9, 'Fahrenheit 451', '2020-07-23', 9780452284234),
(10, 10, 'Of Mice and Men', '2024-07-24', 9780140177398),
(11, 11, 'Gone Girl', '2023-07-25', 9780307588371),
(12, 12, 'The Secret', '2021-07-26', 9780061120084),
(13, 13, 'To Kill a Mockingbird', '2024-07-27', 9781501128034),
(14, 14, 'The Great Alone', '2024-07-28', 9781451673319),
(15, 15, 'The Catcher in the Rye', '2024-07-29', 9780316769488);
TRUNCATE TABLE IssueStatus;
#Display data in IssueStatus
SELECT * FROM IssueStatus;
#Create table ReturnStatus  
CREATE TABLE ReturnStatus (Return_Id INT PRIMARY KEY, Return_cust INT,Return_book_name VARCHAR(50),Return_date DATE,
Isbn_book2 BIGINT,FOREIGN KEY(Isbn_book2) REFERENCES BOOKS(ISBN));
#Insert data into ReturnStatus
INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2) VALUES
(1, 1, '1984', '2024-08-05', 9780451524935),
(2, 2, 'The Great Gatsby', '2024-08-06', 9780743273565),
(3, 3, 'The Alchemist', '2024-08-07', 9780385472579),
(4, 4, 'The Road', '2024-08-08', 9780307474278),
(5, 5, 'The Hobbit', '2024-08-09', 9780547928227),
(6, 6, 'Pride and Prejudice', '2024-08-10', 9780141439600),
(7, 7, 'Harry Potter and the Goblet of Fire', '2024-08-11', 9780439139601),
(8, 8, 'War and Peace', '2024-08-12', 9780140449266),
(9, 9, 'Fahrenheit 451', '2024-08-13', 9780452284234),
(10, 10, 'Of Mice and Men', '2024-08-14', 9780140177398),
(11, 11, 'Gone Girl', '2024-08-15', 9780307588371),
(12, 12, 'The Secret', '2024-08-16', 9780061120084),
(13, 13, 'To Kill a Mockingbird', '2024-08-17', 9781501128034),
(14, 14, 'The Great Alone', '2024-08-18', 9781451673319),
(15, 15, 'The Catcher in the Rye', '2024-08-19', 9780316769488);
#Display data in ReturnStatus
SELECT * FROM ReturnStatus;
#1. Retrieve the book title, category, and rental price of all available books. 
SELECT Book_title, Category, Rental_Price FROM books;
# 2. List the employee names and their respective salaries in descending order of salary. 
SELECT Emp_name, Salary FROM Employee ORDER BY Salary DESC;
# 3. Retrieve the book titles and the corresponding customers who have issued those books. 
SELECT B.Book_title,C.Customer_name FROM Books B LEFT JOIN issuestatus I ON B.ISBN=I.Isbn_book 
LEFT JOIN customer C ON I.Issued_cust=C.Customer_Id;
#4.Display the total count of books in each category. 
SELECT Category,COUNT(*) AS Total_count FROM books GROUP BY Category;
# 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
SELECT Emp_name,Position,Salary FROM employee WHERE Salary>50000;
# 6.List the customer names who registered before 2022-01-01 and have not issued any books yet. 
SELECT C.Customer_name FROM customer C LEFT JOIN issuestatus I ON C.Customer_Id=I.Issued_cust 
WHERE C.Reg_date<'2022-01-01' AND I.Issue_date IS NULL;
# 7 Display the branch numbers and the total count of employees in each branch. 
SELECT Branch_no,COUNT(*) AS Total_employees FROM employee GROUP BY Branch_no;
# 8 Display the names of customers who have issued books in the month of June 2023.
SELECT C.Customer_name,I.Issue_date FROM customer C INNER JOIN issuestatus I ON C.Customer_Id = I.Issued_cust 
WHERE MONTH(I.Issue_date) = 6 AND YEAR(I.Issue_date) = 2023;
# 9.Retrieve book_title from book table containing history. 
SELECT Book_title,Category FROM books WHERE Category = 'Historical';
# 10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees
SELECT B.Branch_no,COUNT(E.Emp_Id) AS Count_of_employee FROM branch B LEFT JOIN employee E ON B.Branch_no=E.Branch_no 
GROUP BY B.Branch_no HAVING COUNT(E.Emp_Id)>5;
# 11.Retrieve the names of employees who manage branches and their respective branch addresses.
SELECT E.Emp_name,B.Branch_no,B.Branch_address FROM Branch B INNER JOIN Employee E ON B.Branch_no=E.Branch_no;
# 12.Display the names of customers who have issued books with a rental price higher than Rs. 25.
SELECT C.Customer_name,B.Rental_Price FROM customer C INNER JOIN IssueStatus  I ON C.Customer_Id=I.Issued_cust 
INNER JOIN Books B ON I.Isbn_book=B.ISBN WHERE B.Rental_Price >25;



