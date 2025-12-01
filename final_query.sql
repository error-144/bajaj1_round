curl -X POST "https://bfhldevapigw.healthrx.co.in/hiring/testWebhook/JAVA" \
-H "Authorization: eyJhbGci0iJIUzI1NiJ9.eyJzWdoboyI6IjYykNFMjQ3NyIsIm5hbWUi0iJBcnlhbiBrdW1hciIsImVtYWlsIjoiYXJ5YW4ua3VtYXIyMDIyQHZpdHN0dWRlbnQuYWMuaW4iLCJzbHVnIjoid3JpdHRlbiIsImV4cCI6MTc2NDA4NzAwMnO.YYKqJXWSzzZq4DQGYMJw88EMYZuV6ZUE6CpPFxi8k" \
-H "Content-Type: application/json" \
-d '{
  "finalQuery": "WITH emp_total AS (SELECT e.emp_id, e.first_name, e.last_name, e.dob, e.department AS department_id, COALESCE(SUM(p.amount), 0) AS total_salary FROM employee e LEFT JOIN payments p ON e.emp_id = p.emp_id AND DAY(p.payment_time) <> 1 GROUP BY e.emp_id, e.first_name, e.last_name, e.dob, e.department), ranked AS (SELECT d.department_name, et.total_salary AS salary, CONCAT(et.first_name, '\'' '\'', et.last_name) AS employee_name, TIMESTAMPDIFF(YEAR, et.dob, CURDATE()) AS age, ROW_NUMBER() OVER (PARTITION BY et.department_id ORDER BY et.total_salary DESC) AS rn FROM emp_total et JOIN department d ON et.department_id = d.department_id) SELECT department_name, salary, employee_name, age FROM ranked WHERE rn = 1;"
}'
