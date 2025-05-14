📘 Library Management Database
🛠️ Project Overview
This project implements a full-featured Library Management System using MySQL. The system is designed to manage books, authors, library members, and book loans. It utilizes core relational database principles, including primary keys, foreign keys, and many-to-many relationships.

🧱 Database Schema Highlights
🔹 Tables & Relationships:
Books: Stores book information (title, ISBN, genre, year, available copies).

Authors: Stores author details (first name, last name).

BookAuthors: Resolves many-to-many relationships between books and authors.

Members: Stores library member information.

Loans: Tracks book loans, return dates, and loan status.

🔗 Key Features:
Primary Keys ensure each record is uniquely identifiable.

Foreign Keys enforce referential integrity across related tables.

Many-to-Many Relationship between Books and Authors via a junction table.

Default Values for dates and book availability for convenience.

✅ Functional Use Cases:
Track which books are available and how many copies remain.

Maintain a catalog of books and their respective authors.

Manage library member registrations and contact details.

Monitor which members borrowed which books and their return status.

🧪 How to Use:
Run the SQL script in your MySQL client.

Insert sample data into each table.

Use JOIN queries to retrieve detailed loan or author information.

Extend the schema with additional features like book reservations or overdue tracking.
