--Deliverable 1
SELECT e.emp_no,
    e.first_name,
	e.last_name,
   t.title,
   t.from_date,
   t.to_date
--INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
    ORDER BY e.emp_no;
	
SELECT DISTINCT ON (rt.emp_no)rt.emp_no,
	rt.first_name,
	rt.last_name,
   rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY emp_no ASC, to_date DESC;

SELECT COUNT(ut.emp_no),ut.title
--INTO retiring_titles
FROM unique_titles as ut
GROUP BY title 
ORDER BY COUNT(title) DESC;

--Deliverable part 2
SELECT DISTINCT ON(e.emp_no)e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (t.to_date = '9999-01-01')
ORDER BY emp_no;