CREATE DATABASE PortfolioManagement;
USE PortfolioManagement;

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    address TEXT
);
Insert into Customers
values (101,'James', 'Taylor', 'james.taylor@yahoo.com', '555-7890', '7th lane versova');

INSERT INTO Customers (first_name, last_name, email, phone, address) VALUES
('John', 'Dcruz', 'john.d@xyz.com', '123-456-7890', '123 Main St, City'),
('Daren', 'Smith', 'daren.smith@gmail.com', '987-654-3210', '13th Lane, Thakur Complex'),
('Alia', 'Ahuja', 'alia.ahuja@yahoo.com', '555-123-4567', '7th cross rd, Manori'),
('Bobby', 'Rawat', 'bob.rawat@yahoo.com', '111-222-3333', '101 Lane Mohd Rd, Satara'),
('Premnath', 'Dalai', 'prem.d@gmail.com', '444-555-6666', '222 Cedar St, Beach'),
('Michael', 'Jones', 'michael.jones@xyz.com', '777-888-9999', '13th Church St, Kormangala'),
('Sarah', 'Shah', 'sarah.shah@yahoo.com', '999-999-9999', 'R.no 12 SP rd, Wadala'),
('Rahul', 'Joshi', 'rahul.joshi@gamil.com', '888-888-8888', 'Sector-3 , Kandivali(E)'),
('Karan', 'Gautam', 'karan.g@yahoo.com', '666-666-6666', '66th lane, Malad(W)'),
('Kiran', 'Khamitkar', 'kiran.khamitakr@yahoo.com', '606-006-6262', 'Tulsi Baug, Pune'),
('Rashi', 'Jain', 'rashi.jain@yahoo.com', '144-905-6167', 'Sector 15, Panvel'),
('Jay', 'Aryan', 'jay.a@gmail.com', '222-333-4444', 'Block - 3, Mahad'),
('Jayesh', 'Joshi', 'jayesh.joshi@yahoo.com', '202-303-4444', 'Block - 33, Khargar'),
('Pranay', 'Sonawane', 'pranaysonawane@gmail.com', '123-003-4488', 'Tulsi Baug, Pune'),
('Preeti', 'Prajapati', 'preetiprajapati@gmail.com', '777-333-4044', 'Veer Desai Rd, Andheri'),
('Shreya', 'Joshi', 'shreya.joshi@gmail.com', '177-300-4044', '4th Street, Cross Rd, Malad');

CREATE TABLE Portfolios (
    portfolio_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    portfolio_name VARCHAR(100),
    creation_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Portfolios (customer_id, portfolio_name, creation_date) VALUES
(101, 'James\'s Portfolio', '2023-04-01'),
(102, 'John\'s Portfolio', '2023-05-16'),
(103, 'Daren\'s Portfolio', '2023-06-21'),
(104, 'Alia\'s Portfolio', '2023-06-28'),
(105, 'Bobby\'s Portfolio', '2023-07-11'),
(106, 'Premnath\'s Portfolio', '2023-07-20'),
(107, 'Micheal\'s Portfolio', '2023-08-22'),
(108, 'Sarah\'s Portfolio', '2023-08-30'),
(109, 'Rahul\'s Portfolio', '2023-09-06'),
(110, 'Karan\'s Portfolio', '2023-10-21'),
(111, 'Kiran\'s Portfolio', '2023-10-27'),
(112, 'Rashi\'s Portfolio', '2023-10-29'),
(113, 'Jay\'s Portfolio', '2023-11-01'),
(114, 'Jayesh\'s Portfolio', '2023-11-19'),
(115, 'Pranay\'s Portfolio', '2023-12-06'),
(116, 'Preeti\'s Portfolio', '2024-03-10'),
(117, 'Shreya\'s Portfolio', '2024-03-20');


CREATE TABLE Stocks (
    stock_id INT AUTO_INCREMENT PRIMARY KEY,
    ticker_symbol VARCHAR(10),
    company_name VARCHAR(100),
    sector VARCHAR(50),
    industry VARCHAR(50)
);

INSERT INTO Stocks (ticker_symbol, company_name, sector, industry) VALUES
('AAPL', 'Apple Inc.', 'Technology', 'Consumer Electronics'),
('GOOGL', 'Alphabet Inc.', 'Technology', 'Internet Services'),
('AMZN', 'Amazon.com Inc.', 'Consumer Discretionary', 'E-commerce'),
('MSFT', 'Microsoft Corporation', 'Technology', 'Software'),
('TSLA', 'Tesla Inc.', 'Consumer Discretionary', 'Automobiles'),
('FB', 'Meta Platforms Inc.', 'Technology', 'Social Media'),
('NFLX', 'Netflix Inc.', 'Communication Services', 'Entertainment'),
('NVDA', 'NVIDIA Corporation', 'Technology', 'Semiconductors'),
('JPM', 'JPMorgan Chase & Co.', 'Financials', 'Banking'),
('V', 'Visa Inc.', 'Financials', 'Payments');

CREATE TABLE Investments (
    investment_id INT AUTO_INCREMENT PRIMARY KEY,
    portfolio_id INT,
    stock_id INT,
    purchase_date DATE,
    quantity INT,
    purchase_price DECIMAL(15, 2),
    FOREIGN KEY (portfolio_id) REFERENCES Portfolios(portfolio_id),
    FOREIGN KEY (stock_id) REFERENCES Stocks(stock_id)
);

INSERT INTO Investments (portfolio_id, stock_id, purchase_date, quantity, purchase_price) VALUES
(1, 1, '2023-01-15', 10, 150.00),
(1, 2, '2023-02-15', 5, 2000.00),
(2, 3, '2023-03-01', 8, 3000.00),
(2, 4, '2023-03-15', 15, 250.00),
(3, 5, '2023-04-01', 7, 600.00),
(3, 8, '2023-04-01', 7, 1600.00),
(3, 6, '2023-04-15', 20, 350.00),
(4, 7, '2023-05-01', 6, 450.00),
(4, 6, '2023-05-01', 6, 4500.00),
(4, 8, '2023-05-15', 12, 400.00),
(5, 9, '2023-06-01', 10, 125.00),
(5, 10, '2023-06-15', 18, 200.00),
(6, 1, '2023-07-01', 15, 145.00),
(6, 2, '2023-07-15', 10, 1950.00),
(6, 5, '2023-07-15', 13, 1950.00),
(7, 3, '2023-08-01', 12, 3100.00),
(7, 4, '2023-08-15', 20, 260.00),
(8, 5, '2023-09-01', 9, 620.00),
(8, 6, '2023-09-15', 25, 370.00),
(9, 7, '2023-10-01', 8, 460.00),
(9, 1, '2023-10-01', 5, 2460.00),
(9, 8, '2023-10-15', 14, 410.00),
(10, 9, '2023-11-01', 11, 130.00),
(10, 10, '2023-11-15', 20, 210.00),
(10, 7, '2023-10-01', 8, 460.00);

