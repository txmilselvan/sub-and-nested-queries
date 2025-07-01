use ecommerce

select quantity,price
from order_item
where price < (

select avg(price) from order_item

);

SELECT employee_name FROM employee
WHERE dept_id IN (
  SELECT dept_id FROM department WHERE dept_name = 'sales'
);

SELECT u.user_id, u.first_name
FROM users u
WHERE EXISTS (
  SELECT 1
  FROM Orders o
  WHERE o.user_id = u.user_id
);

SELECT dept_name,dept_id
FROM department
WHERE not EXISTS (
  SELECT 1
  FROM employee
  WHERE dept_id = dept_id
);

SELECT
  c.customer_id,
  c.name,
  (
    SELECT COUNT(*)
    FROM orders o
    WHERE o.customer_id = c.customer_id
      AND o.amount > (
        SELECT AVG(amount)
        FROM orders
        WHERE customer_id = c.customer_id
      )
  ) AS above_avg_orders
FROM customers c;

 