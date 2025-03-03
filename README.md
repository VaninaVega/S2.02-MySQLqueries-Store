# S2.02-MySQLqueries-Store

## Summary: exercise description

View the E-R diagram in an editor and perform the following queries:

1-List the name of all the products in the product table.
2- List the names and prices of all the products in the product table.
3-List all the columns in the product table.
4-List the name of the products, the price in euros and the price in US dollars (USD).
5-List the name of the products, the price in euros and the price in US dollars (USD). Use the following aliases for the columns: product name, euros, dollars.
6-List the names and prices of all the products in the product table, converting the names to uppercase.
7-List the names and prices of all the products in the product table, converting the names to lowercase.
8-List the names of all the manufacturers in one column, and in another column obtain the first two characters of the manufacturer's name in uppercase.
9-List the names and prices of all the products in the product table, rounding the price value.
10-List the names and prices of all the products in the product table, truncating the price value to display it without any decimal places.
11-List the code of the manufacturers that have products in the product table.
12-List the code of the manufacturers that have products in the product table, eliminating the codes that appear repeated.
13-List the names of the manufacturers sorted in ascending order.
14-List the names of the manufacturers sorted in descending order.
15-List the names of the products sorted, first, by name in ascending order and, second, by price in descending order.
16-Return a list with the first 5 rows of the manufacturer table.
17-Return a list with 2 rows starting from the fourth row of the manufacturer table. The fourth row must also be included in the answer.
18-List the name and price of the cheapest product. (Use only ORDER BY and LIMIT clauses). NOTE: You could not use MIN(price) here, you would need GROUP BY.
19-List the name and price of the most expensive product. (Use only ORDER BY and LIMIT clauses). NOTE: You could not use MAX(price) here, you would need GROUP BY.
20-List the name of all products from the manufacturer whose manufacturer code is equal to 2.
21-Return a list with the product name, price and manufacturer name of all products in the database.
22-Return a list with the product name, price and manufacturer name of all products in the database. Sort the result by manufacturer name, in alphabetical order.
23-Returns a list with the product code, product name, manufacturer code and manufacturer name, of all the products in the database.
24-Returns the product name, its price and the name of its manufacturer, of the cheapest product.
25-Returns the product name, its price and the name of its manufacturer, of the most expensive product.
26-Returns a list of all the products of the manufacturer Lenovo.
27-Returns a list of all the products of the manufacturer Crucial that have a price greater than €200.
28-Returns a list with all the products of the manufacturers Asus, Hewlett-Packard and Seagate. Without using the IN operator.
29-Returns a list with all the products of the manufacturers Asus, Hewlett-Packard and Seagate. Using the IN operator.
30-Returns a list with the name and price of all the products of the manufacturers whose names end with the vowel e.
31-Returns a list with the name and price of all products whose manufacturer name contains the character w in its name.
32-Returns a list with the product name, price and manufacturer name of all products that have a price greater than or equal to €180. Sorts the result, first, by price (in descending order) and, second, by name (in ascending order).
33-Returns a list with the code and manufacturer name, only of those manufacturers that have associated products in the database.
34-Returns a list of all manufacturers that exist in the database, along with the products that each of them has. The list must also show those manufacturers that do not have associated products.
35-Returns a list where only those manufacturers that do not have any associated products appear.
36-Returns all products from the manufacturer Lenovo. (Without using INNER JOIN).
37-Return all data for products that have the same price as the most expensive product from the manufacturer Lenovo. (Without using INNER JOIN).
38-List the name of the most expensive product from the manufacturer Lenovo.
39-List the name of the cheapest product from the manufacturer Hewlett-Packard.
40-Return all products in the database that have a price greater than or equal to the most expensive product from the manufacturer Lenovo.
41-List all products from the manufacturer Asus that have a price greater than the average price of all their products.

## Technologies Used
Requirements: MySql or MariaDb database.

Installation: Run the sql file in the database prompt.

Execution: Running the sql file will create both the database and the project tables automatically.

Deployment: Download or clone the project and use the sql file.

## Contribution
Contributions are welcome! Please follow these steps to contribute:

-Fork the repository -Create a new branch git checkout -b feature/NewFeature -Make your changes and commit them: git commit -m 'Add New Feature' -Upload the changes to your branch: git push origin feature/NewFeature -Make a pull request
