-- Deliverable 1. The Number of Retiring Employees by Title 
SELECT emp.emp_no,
	emp.first_name,
	emp.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees AS emp
LEFT JOIN titles AS ti
ON emp.emp_no = ti.emp_no
WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp.emp_no;

SELECT * FROM retirement_titles;

--Use DISTINCT ON statement to retrieve first emp occurrence
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

-- Retrieve the number of employees 
-- by job title who are about to retire
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title)DESC;

SELECT * FROM retiring_titles;

-- DELIVERABLE 2: The Employees Eligible for the Mentorship Program
-- Use the DISTINCT ON to retreive the 1st occurrence
SELECT DISTINCT ON (emp.emp_no) emp.emp_no,
	emp.first_name,
	emp.last_name,
	emp.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees AS emp
INNER JOIN dept_emp AS de
ON (emp.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (emp.emp_no = ti.emp_no)
WHERE (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
		AND (de.to_date = '9999-01-01')
ORDER BY emp.emp_no;

SELECT * FROM mentorship_eligibility;

-- Retrieve count of mentorship eligbility
SELECT COUNT(first_name)
FROM mentorship_eligibility;

-- To attain breakdown of mentors by titles
SELECT COUNT (emp_no), title
FROM mentorship_eligibility
GROUP BY title
ORDER BY count ASC;



