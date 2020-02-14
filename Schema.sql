DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE "departments" (
    "department_no" varchar   NOT NULL,
    "department_name" varchar   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "department_no"
     )
);

CREATE TABLE "dept_manager" (
    "department_no" varchar   NOT NULL,
    "employee_no" int   NOT NULL,
    "from_date" varchar   NOT NULL,
    "to_date" varchar   NOT NULL
);

CREATE TABLE "dept_emp" (
    "employee_no" int   NOT NULL,
    "department_no" varchar   NOT NULL,
    "from_date" varchar   NOT NULL,
    "to_date" varchar   NOT NULL
);

CREATE TABLE "employees" (
    "employee_no" int   NOT NULL,
    "birth_date" varchar   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "gender" varchar   NOT NULL,
    "hire_date" varchar   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "employee_no"
     )
);

CREATE TABLE "salaries" (
    "employee_no" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" varchar   NOT NULL,
    "to_date" varchar   NOT NULL
);

CREATE TABLE "titles" (
    "employee_no" int   NOT NULL,
    "title" varchar   NOT NULL,
    "from_date" varchar   NOT NULL,
    "to_date" varchar   NOT NULL
);

--ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_department_no" FOREIGN KEY("department_no")
--REFERENCES "departments" ("department_no");

--ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_employee_no" FOREIGN KEY("employee_no")
--REFERENCES "dept_manager" ("employee_no");

--ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_department_no" FOREIGN KEY("department_no")
--REFERENCES "departments" ("department_no");

--ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_employee_no" FOREIGN KEY("employee_no")
--REFERENCES "dept_emp" ("employee_no");

--ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_employee_no" FOREIGN KEY("employee_no")
--REFERENCES "employees" ("employee_no");

--ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_employee_no" FOREIGN KEY("employee_no")
--REFERENCES "employees" ("employee_no");

--read in from users ---see example from class 

copy departments from '/Users/departments.csv'
with (format CSV, header);

copy employees from '/Users/employees.csv'
with (format CSV, header);

copy dept_emp from '/Users/dept_emp.csv'
with (format CSV, header);

copy dept_manager from '/Users/dept_manager.csv'
with (format CSV, header);

copy salaries from '/Users/salaries.csv'
with (format CSV, header);

copy titles from '/Users/titles.csv'
with (format CSV, header);