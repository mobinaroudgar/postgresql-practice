# SQL Practice & Projects
Collection of SQL exercises, solutions and real-world projects

![SQL](https://img.shields.io/badge/SQL-PostgreSQL-blue)
![LeetCode](https://img.shields.io/badge/LeetCode-85%2B-orange)
![GitHub](https://img.shields.io/badge/GitHub-Repository-success)

## 📊 Current Statistics
- **Total Questions**: 14
- **Easy**: 1
- **Medium**: 7
- **Hard**: 6
- **Database**: Sakila

## 🗂 Project Structure
- **Easy/** → Basic queries
- **Medium/** → Intermediate (Joins, Group By, Subqueries)
- **Hard/** → Advanced (Window Functions, CTE, Complex Joins)
- **Database-Schema.sql** → Full database schema

## 📋 List of Questions (14 Questions - Sakila Database)

### 🟢 Easy (1 Question)
1. **[01-distinct-replacement-cost.sql](./Easy/01-distinct-replacement-cost.sql)** - Distinct replacement costs of films + lowest cost

### 🟡 Medium (7 Questions)
1. **[01-cost-ranges.sql](./Medium/01-cost-ranges.sql)** - Film replacement cost ranges
2. **[02-drama-sports-longest.sql](./Medium/02-drama-sports-longest.sql)** - Longest film in Drama or Sports
3. **[03-category-count.sql](./Medium/03-category-count.sql)** - Number of movies per category
4. **[04-actor-movie-count.sql](./Medium/04-actor-movie-count.sql)** - Actor appearances in movies
5. **[05-addresses-without-customer.sql](./Medium/05-addresses-without-customer.sql)** - Addresses without customers
6. **[06-sales-by-city.sql](./Medium/06-sales-by-city.sql)** - Sales by customer city
7. **[07-revenue-by-country-city.sql](./Medium/07-revenue-by-country-city.sql)** - Revenue by country & city

### 🔴 Hard (6 Questions)
1. **[01-staff-revenue-per-customer.sql](./Hard/01-staff-revenue-per-customer.sql)** - Average revenue per staff per customer
2. **[02-sunday-revenue.sql](./Hard/02-sunday-revenue.sql)** - Average Sunday revenue
3. **[03-longer-than-avg-length.sql](./Hard/03-longer-than-avg-length.sql)** - Films longer than group average
4. **[04-customer-lifetime-value.sql](./Hard/04-customer-lifetime-value.sql)** - Customer lifetime value by district
5. **[05-payments-with-category.sql](./Hard/05-payments-with-category.sql)** - Payments with category total revenue
6. **[06-top-film-per-category.sql](./Hard/06-top-film-per-category.sql)** - Top performing film per category (Bonus)

## 🚀 How to Run (PostgreSQL)

```bash
createdb sakila
psql -U postgres -d sakila -f Database-Schema.sql
psql -U postgres -d sakila -f Easy/01-distinct-replacement-cost.sql
