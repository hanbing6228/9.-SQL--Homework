-- Data Engineering

-- ----------------------------
--  Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS "public"."departments";
CREATE TABLE "public"."departments" (
	"dept_no" varchar(255) NOT NULL COLLATE "default",
	"dept_name" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."departments" OWNER TO "postgres";

-- ----------------------------
--  Table structure for dept_emp
-- ----------------------------
DROP TABLE IF EXISTS "public"."dept_emp";
CREATE TABLE "public"."dept_emp" (
	"emp_no" int4 NOT NULL,
	"dept_no" varchar(255) NOT NULL COLLATE "default",
	"from_date" varchar(255) COLLATE "default",
	"to_date" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."dept_emp" OWNER TO "postgres";

-- ----------------------------
--  Table structure for dept_manager
-- ----------------------------
DROP TABLE IF EXISTS "public"."dept_manager";
CREATE TABLE "public"."dept_manager" (
	"dept_no" varchar(255) NOT NULL COLLATE "default",
	"emp_no" int4 NOT NULL,
	"from_date" varchar(255) COLLATE "default",
	"to_date" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."dept_manager" OWNER TO "postgres";

-- ----------------------------
--  Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS "public"."employees";
CREATE TABLE "public"."employees" (
	"emp_no" int4 NOT NULL,
	"birth_date" varchar(255) COLLATE "default",
	"first_name" varchar(255) COLLATE "default",
	"last_name" varchar(255) COLLATE "default",
	"gender" varchar(255) COLLATE "default",
	"hire_date" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."employees" OWNER TO "postgres";

-- ----------------------------
--  Table structure for salaries
-- ----------------------------
DROP TABLE IF EXISTS "public"."salaries";
CREATE TABLE "public"."salaries" (
	"emp_no" int4 NOT NULL,
	"salary" int4,
	"from_date" varchar(255) COLLATE "default",
	"to_date" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."salaries" OWNER TO "postgres";

-- ----------------------------
--  Table structure for titles
-- ----------------------------
DROP TABLE IF EXISTS "public"."titles";
CREATE TABLE "public"."titles" (
	"emp_no" int4 NOT NULL,
	"title" varchar(255) COLLATE "default",
	"from_date" varchar(255) COLLATE "default",
	"to_date" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."titles" OWNER TO "postgres";

-- ----------------------------
--  Primary key structure for table departments
-- ----------------------------
ALTER TABLE "public"."departments" ADD PRIMARY KEY ("dept_no") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table dept_emp
-- ----------------------------
ALTER TABLE "public"."dept_emp" ADD PRIMARY KEY ("emp_no", "dept_no") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table dept_manager
-- ----------------------------
ALTER TABLE "public"."dept_manager" ADD PRIMARY KEY ("dept_no", "emp_no") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table employees
-- ----------------------------
ALTER TABLE "public"."employees" ADD PRIMARY KEY ("emp_no") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table salaries
-- ----------------------------
ALTER TABLE "public"."salaries" ADD PRIMARY KEY ("emp_no") NOT DEFERRABLE INITIALLY IMMEDIATE;




