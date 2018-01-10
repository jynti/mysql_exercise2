mysql> CREATE DATABASE vtapp;
Query OK, 1 row affected (0.00 sec)

mysql> GRANT ALL
    -> ON vtapp.*
    -> TO 'vtapp_user'@'localhost' IDENTIFIED BY 'pswd';
Query OK, 0 rows affected (0.00 sec)

mysql> USE mysql;
Database changed
mysql> SELECT user FROM user;
+------------------+
| user             |
+------------------+
| root             |
| root             |
| root             |
| debian-sys-maint |
| myuser1          |
| root             |
| vtapp_user       |
+------------------+
7 rows in set (0.00 sec)

mysql> SELECT host, user, select_priv, update_priv
    -> FROM user
    -> WHERE user='vtapp_user';
+-----------+------------+-------------+-------------+
| host      | user       | select_priv | update_priv |
+-----------+------------+-------------+-------------+
| localhost | vtapp_user | N           | N           |
+-----------+------------+-------------+-------------+
1 row in set (0.00 sec)

mysql> SELECT host, user, db, select_priv, update_priv
    -> FROM db
    -> WHERE user='vtapp_user';
+-----------+------------+-------+-------------+-------------+
| host      | user       | db    | select_priv | update_priv |
+-----------+------------+-------+-------------+-------------+
| localhost | vtapp_user | vtapp | Y           | Y           |
+-----------+------------+-------+-------------+-------------+
1 row in set (0.00 sec)
