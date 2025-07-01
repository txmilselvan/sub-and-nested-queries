# sub-and-nested-queries

# I created the subqueries and nested queries for mysql working phase to calculate multiple values from easy statement for usefull ways.

# A subquery or nested query is a query inside another SQL statement SELECT, FROM, WHERE, HAVING, ect..,it simplifies complex logic by splitting tasks into smaller, modular units.

# Scalar subquery: returns a single value (one row, one column). Often used in SELECT, WHERE, or HAVING ,column multi-row subquery.

# returns a single column with multiple rows—commonly used with IN, ANY, or ALL ,correlated subquery,references outer query columns, executes per outer rows.

# Correlated subqueries run per row; optimizers might flatten or cache, but they can degrade performance for large datasets best practice, When scaling, convert to JOIN, CTE, or derived tables when possible.

# Use a real dataset—like employees and departments—to walk through each subquery type, compare it to an equivalent JOIN or CTE, and benchmark performance differences.
