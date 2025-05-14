-- 🔧 Create the database
CREATE DATABASE LibraryDB;
USE LibraryDB;

-- 📚 Table: Books
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    ISBN VARCHAR(13) UNIQUE NOT NULL,
    Genre VARCHAR(100),
    PublishedYear INT,
    CopiesAvailable INT DEFAULT 1
);

-- 👨‍💼 Table: Authors
CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL
);

-- 🔗 Table: BookAuthors (Many-to-Many: A book can have multiple authors, an author can write multiple books)
CREATE TABLE BookAuthors (
    BookID INT,
    AuthorID INT,
    PRIMARY KEY (BookID, AuthorID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID) ON DELETE CASCADE,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID) ON DELETE CASCADE
);

-- 👤 Table: Members
CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(200) NOT NULL,
    Email VARCHAR(150) UNIQUE NOT NULL,
    Phone VARCHAR(20),
    JoinDate DATE DEFAULT CURRENT_DATE
);

-- 📖 Table: Loans (1 Member can borrow many Books; 1 Book can be loaned many times)
CREATE TABLE Loans (
    LoanID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT NOT NULL,
    MemberID INT NOT NULL,
    LoanDate DATE NOT NULL,
    ReturnDate DATE,
    Returned BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);
