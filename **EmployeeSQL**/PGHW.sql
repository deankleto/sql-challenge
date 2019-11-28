

CREATE TABLE "employees" (
    "emp_no" VARCHAR (255) NOT NULL,
    "birth_date" DATE NOT NULL,
    "first_name" VARCHAR (255) NOT NULL,
    "last_name" VARCHAR (255) NOT NULL,
    "gender" VARCHAR (255) NOT NULL,
    "hire_date" DATE NOT NULL
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" VARCHAR (255) NOT NULL,
    "dept_no" VARCHAR (255) NOT NULL,
    "from_date" DATE NOT NULL,
    "to_date" DATE NOT NULL
);

CREATE TABLE "titles" (
    "emp_no" VARCHAR (255) NOT NULL,
    "title" VARCHAR (255) NOT NULL,
    "from_date" DATE NOT NULL,
    "to_date" DATE NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR (255) NOT NULL,
    "emp_no" VARCHAR (255) NOT NULL,
    "from_date" DATE NOT NULL,
    "to_date" DATE NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" VARCHAR (255) NOT NULL,
    "salary" FLOAT NOT NULL,
    "from_date" DATE NOT NULL,
    "to_date" DATE NOT NULL
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR (255) NOT NULL,
    "dept_name" VARCHAR (255) NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);