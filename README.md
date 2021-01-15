# Bash scripting (2020)

A series of bash scripts. It has the following functions:

1.	Backup source code
2.  Unzip und classify files
3.  Display usage
4.  Create multiple users


## Installation
```
git clone https://github.com/xuanjiao/Bash_scripting.git
```

## Usage
1.  Run the script

```
pi@raspberrypi:~/Projects/Bash $ ./run.sh

*************************************************
* 1.	Backup Source code
* 2.	Unzip and classify file
* 3.	Display disk and memory usage
* 4.	Create multiple users
* 5.	Query for database
* q.	Quit
*************************************************

```

2.  Type the option number. The following are instructions for all options:


### 1.	Backup source code
Backup and compress files in a path

```
1
Please enter the path of the source code directory: code_backup/test
Back up files
Done. Backup file path: /home/pi/c_str/test
Compress files
tar: .: Datei hat sich beim Lesen geändert.
Done. Compress file path: /home/pi/share/src_15_01_2021.tgz
```
### 2.  Unzip und classify files
Unzip the compressed package and place the files in categories.

```
2
Please enter the path of the compressed file: file_unzip/test.tar.gz
Decompress files
Classify files
Done
```

Directory contents:
```
file_unzip
├── c_files (C files were placed here)
│   ├── test1.c
│   └── test2.c
├── file_unzip.sh
├── h_files (Header files were placed here)
│   └── test1.h
└── test.tar.gz (Compressed file)
```

### 3. Display usage

Showing the percentages of memory, disk and CPU used on the machine

```
3
Memory Usage: 327/924MB (35.4%)
Disk Usage: 7873/14637MB (57%)
```

### 4. Create multiple users
Create multiple users with random password, and then save the user name and passsword to a text file.
```
4
Please enter the user name: kiwi
Please enter the number of new user: 3
New user created: kiwi1
New user created: kiwi2
New user created: kiwi3
```
```
new_user.txt
kiwi1	68b329da
kiwi2	ee1ae285
kiwi3	ea1e8111
```
### 5. SQL Query
Query for exployee information in the database

```
5
Please enter the employee's name: James Smith
Please enter the database password: pi
employees
+--------+------------+------------+-----------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date  |
+--------+------------+------------+-----------+--------+------------+
|  10001 | 1970-01-23 | James      | Smith     | M      | 2020-06-26 |
+--------+------------+------------+-----------+--------+------------+
```

If database not exist
```
5
Please enter the employee's name: James Smith
Please enter the database password: pi
Database employees not exists. Create database.
+--------+------------+------------+-----------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date  |
+--------+------------+------------+-----------+--------+------------+
|  10001 | 1970-01-23 | James      | Smith     | M      | 2020-06-26 |
+--------+------------+------------+-----------+--------+------------+
```
