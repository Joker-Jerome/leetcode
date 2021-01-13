USE sql_cookbook;
DROP TABLE EMP IF EXISTS EMP;
CREATE TABLE EMP  (
 EMPNO INTEGER PRIMARY KEY, 
 ENAME VARCHAR(10),
 JOB VARCHAR(10) , 
 MGR INTEGER , 
 HIREDATE DATE , 
 SAL INTEGER , 
 COMM INTEGER , 
 DEPTNO INTEGER 
 );

-- key --
ALTER TABLE EMP
ADD PRIMARY KEY (EMPNO);


-- insert values --
INSERT INTO EMP VALUES (7369, 'SMITH',  'CLERK',     7902, DATE('1980-12-17'),  800, NULL, 20);
INSERT INTO EMP VALUES
        (7499, 'ALLEN',  'SALESMAN',  7698,
        date('1981-2-20'), 1600,  300, 30);
INSERT INTO EMP VALUES
        (7521, 'WARD',   'SALESMAN',  7698,
        date('1981-2-22'), 1250,  500, 30);
INSERT INTO EMP VALUES
        (7566, 'JONES',  'MANAGER',   7839,
        date('1981-4-2'),  2975, NULL, 20);
INSERT INTO EMP VALUES
        (7654, 'MARTIN', 'SALESMAN',  7698,
        date('1981-9-28'), 1250, 1400, 30);
INSERT INTO EMP VALUES
        (7698, 'BLAKE',  'MANAGER',   7839,
        date('1981-5-1'),  2850, NULL, 30);
INSERT INTO EMP VALUES
        (7782, 'CLARK',  'MANAGER',   7839,
        date('1981-6-9'),  2450, NULL, 10);
INSERT INTO EMP VALUES
        (7788, 'SCOTT',  'ANALYST',   7566,
        date('1982-12-9'), 3000, NULL, 20);
INSERT INTO EMP VALUES
        (7839, 'KING',   'PRESIDENT', NULL,
        date('1981-11-17'), 5000, NULL, 10);
INSERT INTO EMP VALUES
        (7844, 'TURNER', 'SALESMAN',  7698,
        date('1981-9-8'),  1500,    0, 30);
INSERT INTO EMP VALUES
        (7876, 'ADAMS',  'CLERK',     7788,
        date('1983-1-12'), 1100, NULL, 20);
INSERT INTO EMP VALUES
        (7900, 'JAMES',  'CLERK',     7698,
        date('1981-12-3'),   950, NULL, 30);
INSERT INTO EMP VALUES
        (7902, 'FORD',   'ANALYST',   7566,
        date('1981-12-3'),  3000, NULL, 20);
INSERT INTO EMP VALUES
        (7934, 'MILLER', 'CLERK',     7782,
        date('1982-1-23'), 1300, NULL, 10);
       
       
-- department table 
USE sql_cookbook;
DROP TABLE IF EXISTS sql_cookbook.DEPT;
CREATE TABLE DEPT  (
 DEPTNO INTEGER PRIMARY KEY,
 DNAME VARCHAR(10),
 LOC VARCHAR(10)
 );

-- key --
ALTER TABLE DEPT;


-- insert values --
INSERT INTO DEPT VALUES (10, 'ACCOUNTING',  'NEW YORK'); 
INSERT INTO DEPT VALUES (20, 'RESEARCH',  'DALLAS'); 
INSERT INTO DEPT VALUES (30, 'SALES',  'CHICAGO'); 
INSERT INTO DEPT VALUES (40, 'OPERATIONS',  'BOSTON'); 

-- department table 
USE sql_cookbook;
DROP TABLE sql_cookbook.emp_bonus;
CREATE TABLE sql_cookbook.EMP_BONUS  (
 EMPNO INTEGER,
 RECEIVED DATE,
 TYPE INTEGER
 );

-- key --
ALTER TABLE EMP_BONUS;


-- insert values --
INSERT INTO EMP_BONUS VALUES (7934, date('2005-03-17'),  1); 
INSERT INTO EMP_BONUS VALUES (7934, date('2005-02-15'),  2); 
INSERT INTO EMP_BONUS VALUES (7839, date('2005-02-15'),  3); 
INSERT INTO EMP_BONUS VALUES (7782, date('2005-02-15'),  1); 

-- check the data       
select * from EMP;
select count(*) from EMP;
select * from sql_cookbook.EMP_BONUS;

-- hierachical ordering 
select EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO, 
	lead(HIREDATE) over (partition by DEPTNO order by HIREDATE) as PREV_HIREDATE 
from EMP
where DEPTNO = 30;

-- prev date
select EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO, 
	lead(HIREDATE) over (partition by DEPTNO) as PREV_HIREDATE 
from EMP
where DEPTNO = 30;

-- diff 
select deptno,ename,sal,hiredate,
	coalesce((sal - next_sal),'NA') diff
from (
	select deptno,ename,sal,hiredate,
		lead(sal) over (partition by deptno order by hiredate) next_sal
	from emp ) as b;

-- 
-- testing 

select * 
from sql_cookbook.EMP
limit 200;

-- 
USE sql_cookbook;

create table V (
PROJ_ID INTEGER, 
PROJ_START DATE, 
PROJ_END DATE)

insert into V values 
(1, '01-JAN-2005', '02-JAN-2005');
insert into V values 
(2, '02-JAN-2005', '03-JAN-2005');
insert into V values 
(3, '03-JAN-2005', '04-JAN-2005');
insert into V values 
4 04-JAN-2005 05-JAN-2005

insert into V values 
  5 06-JAN-2005 07-JAN-2005
  
  insert into V values 
  6 16-JAN-2005 17-JAN-2005

  
  
  --
  
  with recursive x (tree,mgr,depth)
  as(
	  select cast(ename as char), mgr, 0
	  from sql_cookbook.emp
	  where ename = 'MILLER'
		union all
		select cast(x.tree+'-->'+e.ename as char),e.mgr, x.depth+1
		from  sql_cookbook.emp e, x
		where x.mgr = e.empno
         )
         select tree leaf___branch___root
           from x
          where depth = 2

 -- 3.3 Creating a Hierarchical View of a Table
          
 -- windonw function
select ename, deptno
from sql_cookbook.emp
where deptno = 10
order by 2;

select ename, deptno,
count(*) over() as cnt 
from sql_cookbook.emp
where deptno = 10
order by 2;

select ename, deptno,
count(*) as cnt 
from sql_cookbook.emp
where deptno = 10
order by 2;
          
select ename, deptno, count(*) over(partition by deptno) as cnt
from sql_cookbook.emp
order by 2;

-- running total 


select deptno,
            ename,
hiredate,
sal,
sum(sal)over(partition by deptno) as total1, sum(sal)over() as total2,
sum(sal)over(order by hiredate) as running_total
      from sql_cookbook.emp
      where deptno=10;
      
-- framing 
     
 select deptno,
            ename,
            sal,
            sum(sal)over(order by hiredate
                        range between unbounded preceding
                          and current row) as run_total1,
            sum(sal)over(order by hiredate
                          rows between 1 preceding
                          and current row) as run_total2,
            sum(sal)over(order by hiredate
                        range between current row
                          and unbounded following) as run_total3,
            sum(sal)over(order by hiredate
                          rows between current row
                          and 1 following) as run_total4
      from sql_cookbook.emp
      where deptno=10;
      
     
     
     
# SQL cookbook

-- 1. retrieving results
## posgres
select ename||' WORKS AS A '||job as msg
from sql_cookbook.EMP
where deptno = 10;

## concat
select concat(ename, ' WORKS AS A ', job) as  msg
from sql_cookbook.EMP
where deptno = 10;

select concat(ename, ' WORKS AS A ', job) as  msg
from sql_cookbook.EMP
where deptno != 10;

## conditional logic in select statement 
select concat(ename, ' WORKS AS A ', job) as  msg,
	case when sal >= 1000 then 'high'
		when sal < 1000 then 'low'
		end as class
from sql_cookbook.EMP
where deptno != 10;

## fetch random rows
select ename,job
from sql_cookbook.emp
order by rand() limit 5;

## coalesce for NULL values
## Use the LIKE operator in conjunction with the SQL wildcard operator (“%”):
select ename, job
from sql_cookbook.EMP
where DEPTNO in (10, 20) AND
	job like '%MAN%' or job like '%ER';

-- 2. sorting results

## asc desc
select empno,deptno,sal,ename,job
from sql_cookbook.emp
order by deptno, sal desc;

## sorting by substrings
select ename,job, substr(job,length(job)-3, length(job)-1) as substr
from sql_cookbook.emp
order by substr(job,length(job)-3, length(job)-1);

## sorting when there is null
with sub (empno,deptno,sal,ename,job,comm,is_null) as (
	select empno,deptno,sal,ename,job,comm,
		case when comm is null then 1 else 0 end as is_null
	from sql_cookbook.emp
)
select *
from sub
order by is_null asc, sal desc;

## Sorting on a Data Dependent Key
select ename,sal,job,comm
from sql_cookbook.emp
order by case when job = 'SALESMAN' then comm else sal end;

select ename,sal,job,comm,
    case when job = 'SALESMAN' then comm else sal end as ordered
  from sql_cookbook.emp
  order by ordered;

-- 3. Working with Multiple Tables
## Retrieving Values from One Table That Do Not Exist in Another
select deptno
from dept
where deptno not in (select deptno from sql_cookbook.emp)

## create a similar table 

CREATE TABLE sql_cookbook.emp_updated LIKE sql_cookbook.emp;
insert into sql_cookbook.emp_updated select * from sql_cookbook.emp;
select * from sql_cookbook.emp_updated;

INSERT INTO sql_cookbook.emp_updated VALUES
        (7427, 'ALLENHH',  'SALESMAN',  7698,
        date('1981-2-20'), 1600,  300, 30);
      
INSERT INTO sql_cookbook.emp_updated VALUES
        (7411, 'Jerome',  'DATAS',  7698,
        date('1994-2-20'), 1600,  300, 30);
## Determining Whether Two Tables Have the Same Data
# 1. First, find rows in table EMP that do not exist in view V.
# 2. Then combine (UNION ALL) those rows with rows from view V that do not exist in table EMP.
# complicated 
select *
from (
	select ename
	from sql_cookbook.EMP
	) e 
where not exists (
	select null
	from (
		select ename
		from sql_cookbook.emp_updated
	) eu
	where e.ename = eu.ename 
	)
union all 
select *
from
	(
	select ename
	from sql_cookbook.emp_updated
	) eu 
where not exists (
	select null
	from (
		select ename
		from sql_cookbook.emp
	) e
	where e.ename = eu.ename 
	)
		
	
);

## easy 
select *
from (
	select ename, count(*) as cnt
	from sql_cookbook.EMP
	group by ename
	) e 
where not exists (
	select null
	from (
		select ename, count(*) as cnt
		from sql_cookbook.emp_updated
		group by ename
	) eu
	where e.ename = eu.ename 
	and e.cnt = e.cnt
	)
union all 
select *
from
	(
	select ename, count(*) as cnt
	from sql_cookbook.emp_updated
	group by ename
	) eu 
where not exists (
	select null
	from (
		select ename, count(*) as cnt
		from sql_cookbook.emp
		group by ename
	) e
	where e.ename = eu.ename 
	and e.cnt = e.cnt
	)
		
	
);

## easy join

select e.ename, d.loc
from sql_cookbook.emp e
	join sql_cookbook.dept d
	on e.DEPTNO = d.DEPTNO;

## avoid unnecessary cartesian products
select e.ename, d.loc
from emp e, dept d
where e.deptno = 10
and d.deptno = e.deptno

## case when calculation when joining 

select e.empno,
        e.ename,
        e.sal,
        e.deptno,
        e.sal*case when eb.type = 1 then .1
                  when eb.type = 2 then .2
                  else .3
              end as bonus
  from sql_cookbook.emp e, sql_cookbook.emp_bonus eb
  where e.empno  = eb.empno
    and e.deptno = 10;
    
select e.empno,
    e.ename,
    e.sal,
    e.deptno,
    e.sal*case when eb.type = 1 then .1
              when eb.type = 2 then .2
              else .3
          end as bonus
  from sql_cookbook.emp e JOIN
  	sql_cookbook.emp_bonus eb
  	on e.EMPNO = eb.EMPNO
  where e.deptno = 10;

 -- 4. Manipulate 
 ## Copying a Table Definition
 
create table dept_2 like dept;
create table dept_2 
as 
	select * 
	from dept
	where 1 = 0

## Modifying Records in a Table
update sql_cookbook.EMP
set sal = sal*1.10
where depto = 50;

## Modifying Records in a Table (for a condition)
update emp
set sal=sal*1.20
where empno in ( select empno from emp_bonus )

update emp
set sal = sal*1.20
  where exists ( select null
                  from emp_bonus
                  where emp.empno=emp_bonus.empno )


## Deleting Specific Records
delete from emp where deptno = 10

## Deleting Duplicate Records
create table dupes (id integer, name varchar(10));
insert into dupes values (1, 'NAPOLEON');
insert into dupes values (2, 'DYNAMITE');
insert into dupes values (3, 'DYNAMITE');
insert into dupes values (4, 'SHE SELLS');
insert into dupes values (5, 'SEA SHELLS');
insert into dupes values (6, 'SEA SHELLS');
insert into dupes values (7, 'SEA SHELLS');

## delete
delete from dupes
where id not in
      ( select min(id)
 		from ( select id,name from dupes ) tmp
        group by name );
       
## select 
select id, name
from ( 
	select id, name, 
	row_number() over (partition by name order by id) as rn
	from sql_cookbook.dupes
) tmp
where rn = 1;

select *
from sql_cookbook.dupes;

-- 5. Meta Query
## table name 
select table_name
from information_schema.tables;

## Use the SHOW INDEX command:
show index from emp;

-- 6. Working with string 

create table t10
as 
select row_number() over () as id
from sql_cookbook.EMP
limit 10;

# we chose 10 becuase the definition of this column varchar(10)
select substr(e.ename,iter.pos,1) as C
from (select ename from sql_cookbook.emp where ename = 'KING') e,
       (select id as pos from t10) iter
where iter.pos <= length(e.ename);

## Counting the Occurrences of a Character in a String
create table t1
as 
select row_number() over () as id
from sql_cookbook.EMP
limit 1;

select (length('10,CLARK,MANAGER')- length(replace('10,CLARK,MANAGER',',','')))/length(',')
as cnt 
from t1;

## regular expression
where data regexp '[^0-9a-zA-Z]' = 0

-- 7. Working with Numbers
## Generating a Running Total
select ename, sal,
     sum(sal) over (order by sal,empno) as running_total
from sql_cookbook.emp
order by 2;

## Generating a Running Product
select e.empno,e.ename,e.sal,
(select exp(sum(ln(d.sal)))
   from sql_cookbook.emp d
where d.empno <= e.empno
  and e.deptno=d.deptno) as running_prod
from sql_cookbook.emp e
where e.deptno=10;

## Finding the mode
select sal
from sql_cookbook.EMP
where DEPTNO = 20
group by SAL
having count(*) >= all(select count(*) as count 
						from sql_cookbook.EMP
						where DEPTNO = 20
						group by SAL
						);

select deptno, sal, count(sal) as sal_count 
from sql_cookbook.EMP
group by DEPTNO, sal
order by DEPTNO;

# Finding mode for each group
with sal_count(deptno, sal, sal_count) as (
	select deptno, sal, count(sal) as sal_count 
	from sql_cookbook.EMP
	group by DEPTNO, sal
), count_summary(deptno, max_count) as (
	select deptno, max(SAL_COUNT) as max_count
	from sal_count
	group by DEPTNO
)
select c.deptno, s.sal 
from count_summary c left join sal_count s
on c.deptno = s.deptno and c.max_count = s.sal_count;

# second
with sal_count as (
	select deptno, sal, count(sal) as sal_count 
	from sql_cookbook.EMP
	group by DEPTNO, sal
), count_summary as (
	select deptno, max(SAL_COUNT) as max_count
	from sal_count
	group by DEPTNO
)
select c.deptno, s.sal 
from count_summary c left join sal_count s
on c.deptno = s.deptno and c.max_count = s.sal_count;

# median 
with sal_row as (
	select deptno, 
		sal, 
		row_number() over (PARTITION by deptno order by sal) as rn,
		count(*) over (PARTITION by deptno) as rc
	from sql_cookbook.EMP
)
select deptno, AVG(sal) as median #  sal, mid_row, mid_row_extra
from (
	select deptno, sal, rn, rc, 
		case when odd_even = 1 then (rc + 1)/2
			 when odd_even = 0 then rc/2
			 end as mid_row,
		case when odd_even = 1 then (rc + 1)/2
			 when odd_even = 0 then rc/2 + 1
			 end as mid_row_extra
	from (
		select deptno, sal, rn, rc,  
			MOD(rc, 2) as odd_even
		from sal_row
		) b 
	) a 
where rn = mid_row or rn = mid_row_extra
group by deptno;

select deptno, 
	sal, 
	row_number() over (PARTITION by deptno order by sal) as rn,
	count(*) over (PARTITION by deptno) as rc 
from sql_cookbook.EMP;

## Determining the Percentage of a Total
with dept_sum as (
	select deptno, sum(sal) as sum_sal
	from sql_cookbook.EMP
	group by DEPTNO

)
select deptno, sum_sal, sum_sal/(select sum(sum_sal) from dept_sum) * 100 as pct
from dept_sum
order by deptno;

# sum(sal)over() total

## Aggregating Nullable Columns
select deptno, avg(coalesce(comm, 0)) as avg_output
from sql_cookbook.EMP
group by DEPTNO;

select deptno, coalesce(avg(comm), 'NULL') as avg_output
from sql_cookbook.EMP
group by DEPTNO;

## Computing Averages Without High and Low Values
use sql_cookbook;
select avg(sal)
 from sql_cookbook.emp
where sal not in ((select min(sal) from emp),(select max(sal) from emp));

with min_max as (
	select deptno, 
		sal,
		min(sal) over (partition by deptno) as sal_min,
		max(sal) over (partition by deptno) as sal_max	
	from sql_cookbook.EMP
)
select deptno, avg(sal) as sal_avg, stddev(sal) as sal_std
 from min_max 
where sal not in (sal_min,sal_max)
group by deptno;


-- 8. Date Arithmetic
## adding, subtracting time
select hiredate - interval 5 day   as hd_minus_5D,
	hiredate + interval 5 day   as hd_plus_5D,
	hiredate - interval 5 month as hd_minus_5M,
	hiredate + interval 5 month as hd_plus_5M,
	hiredate - interval 5 year  as hd_minus_5Y,
  	hiredate + interval 5 year  as hd_plus_5Y
from sql_cookbook.emp
where deptno=10;

## Determining the Number of Days Between Two Dates
# bigger value should be passed first to avoid
select datediff(ward_hd, allen_hd)
  from (
		select hiredate as ward_hd
		from emp
		where ename = 'WARD'
) x,
(
select hiredate as allen_hd
from emp
where ename = 'ALLEN'
) y;

## Determining the Number of Business Days Between Two Dates
WITH RECURSIVE t500 AS (SELECT 0 AS value UNION ALL SELECT value + 1 FROM seq WHERE value < 500)
  SELECT * FROM t500;
  
select curdate() as cur_date, HIREDATE, datediff(CURDATE(), hiredate) as diff_date
from sql_cookbook.EMP;
 
select DEPTNO, avg(datediff(CURDATE(), hiredate)) as diff_date_avg
 from sql_cookbook.EMP
 group by deptno;
 
WITH RECURSIVE tmax AS (SELECT 0 AS value UNION ALL SELECT value + 1 FROM seq WHERE value < 15000)
  SELECT * FROM tmax;
select DEPTNO, curdate() as cur_date, HIREDATE, datediff(CURDATE(), hiredate) as diff_date_avg
 from sql_cookbook.EMP;

select ename, hiredate, DATE_FORMAT(hiredate, '%a') as weekday, 
	DATE_FORMAT(hiredate, '%Y') as year,
	DATE_FORMAT(hiredate, '%M') as month,
	DATE_FORMAT(hiredate, '%D') as day
from sql_cookbook.EMP
limit 100;
 
## Counting the Occurrences of Weekdays in a Year
