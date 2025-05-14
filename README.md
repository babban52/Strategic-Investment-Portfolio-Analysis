# 📊 Strategic Investment Portfolio Analysis

## 📌 Overview

This project focuses on analyzing investment portfolios using data-driven insights to optimize asset allocation, assess risk, and enhance returns. Leveraging advanced analytical techniques, visualizations, and financial modeling, it provides a comprehensive evaluation of investment performance. The analysis helps investors make informed decisions by examining key metrics such as:

- Portfolio diversification  
- Risk-adjusted returns  
- Sector/industry exposure  
- Market trends

---

## 🧠 Approach

### 🛠️ Database Creation

A relational database was designed in **MySQL** with four core tables:

- **Customers**: Stores client details.
- **Portfolios**: Links each customer to a portfolio.
- **Stocks**: Contains stock-related metadata like company, sector, and industry.
- **Investments**: Logs transactions for each portfolio-stock combination.

> SQL script includes schema creation and sample data insertions. Refer to the `portfolio_schema.sql` file.

### 📈 Power BI Visualizations

#### 🔹 Dashboard 1
- **Donut Chart**: Stock-wise investment percentage  
- **Treemap**: %GT sum of investments by industry  
- **Line Graph**: Purchase price trends over months  
- **KPIs**:  
  - Maximum purchase price  
  - Company count  
  - Average investment quantity  

#### 🔹 Dashboard 2
- **Most Invested Stock**: Highlighted using card visualization  
- **Total Investment by Stock**  
- **Sector-wise Stock Distribution**: Pie chart representation  
- **Investment Distribution**: Histogram of investment bins  
- **Average Investment by Industry**: Table for in-depth financial analysis  

---

## 🗃️ Files

- `portfolio_schema.sql`: SQL script to set up and populate the database  
- Power BI Report: Interactive dashboards for visualization  

### 📊 Dashboard Screenshots

#### Dashboard Page 1  
![Dashboard Page 1](https://github.com/babban52/Strategic-Investment-Portfolio-Analysis/blob/main/101.png)  

#### Dashboard Page 2  
![Dashboard Page 2](https://github.com/babban52/Strategic-Investment-Portfolio-Analysis/blob/main/102.png)

---

## 📌 Key Insights

- **Amazon (AMZN)** is the most heavily invested stock.  
- **Technology** dominates sector-wise investment, followed by Consumer Discretionary and Financials.  
- Investments peak in **May** and **August**, hinting at periodic buying trends.  
- Diverse industry exposure ensures a **balanced risk profile**.

---

## 🧰 Tools & Technologies

- **SQL (MySQL)** – for data modeling and querying  
- **Power BI** – for dynamic dashboards and visual insights  
- **Data Analysis** – applied over structured investment datasets

---

## 🚀 Future Enhancements

- Add real-time stock price integration via API  
- Implement risk metrics like Sharpe Ratio, Beta  
- Introduce portfolio rebalancing logic based on performance triggers  
- Enable user-level login for portfolio simulation

---

