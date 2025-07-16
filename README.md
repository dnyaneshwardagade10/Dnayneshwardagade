# Dnayneshwardagade
Microsoft Windows [Version 10.0.19045.6093] (c) Microsoft Corporation. All rights reserved.

C:\Program Files\MySQL\MySQL Server 9.3\bin>mysql -h localhost -u root -p Enter password: **** Welcome to the MySQL monitor. Commands end with ; or \g. Your MySQL connection id is 9 Server version: 9.3.0 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its affiliates. Other names may be trademarks of their respective owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases; +--------------------+ | Database | +--------------------+ | abc | | information_schema | | mysql | | performance_schema | | sys | +--------------------+ 5 rows in set (0.209 sec)

mysql> create database new; Query OK, 1 row affected (0.184 sec)

mysql> use new; Database changed mysql> create table student (rollno INT not null name varchar(10)); ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'name varchar(10))' at line 1 mysql> create table new.student(rollno int , name varchar(10)); Query OK, 0 rows affected (0.308 sec)

mysql> desc student; +--------+-------------+------+-----+---------+-------+ | Field | Type | Null | Key | Default | Extra | +--------+-------------+------+-----+---------+-------+ | rollno | int | YES | | NULL | | | name | varchar(10) | YES | | NULL | | +--------+-------------+------+-----+---------+-------+ 2 rows in set (0.129 sec)

mysql> create user 'dnyaneshwar'@localhost identified by 'root'; Query OK, 0 rows affected (0.240 sec)

mysql> ^C mysql> grant all privileges on . to 'dnyaneshwar'@localhost; Query OK, 0 rows affected (0.108 sec)

mysql> alter table student add address varchar(50); Query OK, 0 rows affected (0.451 sec) Records: 0 Duplicates: 0 Warnings: 0

mysql> desc student; +---------+-------------+------+-----+---------+-------+ | Field | Type | Null | Key | Default | Extra | +---------+-------------+------+-----+---------+-------+ | rollno | int | YES | | NULL | | | name | varchar(10) | YES | | NULL | | | address | varchar(50) | YES | | NULL | | +---------+-------------+------+-----+---------+-------+ 3 rows in set (0.012 sec)

mysql> alter table student modify rollno int NOT NULL; Query OK, 0 rows affected (0.639 sec) Records: 0 Duplicates: 0 Warnings: 0

mysql> desc student; +---------+-------------+------+-----+---------+-------+ | Field | Type | Null | Key | Default | Extra | +---------+-------------+------+-----+---------+-------+ | rollno | int | NO | | NULL | | | name | varchar(10) | YES | | NULL | | | address | varchar(50) | YES | | NULL | | +---------+-------------+------+-----+---------+-------+ 3 rows in set (0.012 sec)

mysql> Insert INTO student (rollno,name,address) -> values(2,'aman','234 main st'); Query OK, 1 row affected (0.094 sec)

mysql> desc student; +---------+-------------+------+-----+---------+-------+ | Field | Type | Null | Key | Default | Extra | +---------+-------------+------+-----+---------+-------+ | rollno | int | NO | | NULL | | | name | varchar(10) | YES | | NULL | | | address | varchar(50) | YES | | NULL | | +---------+-------------+------+-----+---------+-------+ 3 rows in set (0.011 sec)

mysql> set primary key -> 1; ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'primary key 1' at line 1 mysql> set primary key -> 2 -> ^C mysql> set primary key -> 2; ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'primary key 2' at line 1 mysql> alter table student -> add primary key(rollno); Query OK, 0 rows affected (1.251 sec) Records: 0 Duplicates: 0 Warnings: 0

mysql> desc student; +---------+-------------+------+-----+---------+-------+ | Field | Type | Null | Key | Default | Extra | +---------+-------------+------+-----+---------+-------+ | rollno | int | NO | PRI | NULL | | | name | varchar(10) | YES | | NULL | | | address | varchar(50) | YES | | NULL | | +---------+-------------+------+-----+---------+-------+ 3 rows in set (0.012 sec)

mysql>
