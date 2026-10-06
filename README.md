# Databases - MariaDB Labs

Notes, SQL scripts and exercises for the Databases course (lab material by Adolfo Villafiorita).

## Tools

- [MariaDB](https://mariadb.org/documentation/) - the DBMS (server + `mariadb` CLI client)
- [DBeaver](https://dbeaver.io/) - graphical client

Connection settings I use locally:

| Setting  | Value       |
|----------|-------------|
| Host     | `127.0.0.1` |
| Port     | `3306`      |
| User     | `root`      |

From the terminal:

```
mariadb -h 127.0.0.1 -P 3306 -u root -p
```

## Topics covered

1. **Setup**: client-server architecture, installing MariaDB and DBeaver, connecting
2. **Utility commands**: `create database`, `drop database`, `use`, `source`, loading dumps
3. **Exploring**: `show databases`, `show tables`, `describe`
4. **Querying**: `select`, `where`, `order by`, `limit`, `like`, `between`
5. **Aggregates and dates**: `min`, `max`, `avg`, `sum`, `count`, `CURDATE()`, `DATEDIFF`, `TIMESTAMPDIFF`
6. **Table design**: data types, column constraints (`NOT NULL`, `UNIQUE`, `DEFAULT`, `AUTO_INCREMENT`)
7. **Keys**: primary keys (single and composite), foreign keys, references between tables
8. **Inserting data**: single and multiple rows, dumps
9. **IMDB example**: movies, actors, roles, genres

## Repository structure

```
.
├── README.md
├── lab1-setup/          # installation notes, first queries
├── lab2-queries/        # select, filters, aggregates
├── lab3-design/         # create table, keys, IMDB exercise
└── dumps/               # SQL dumps provided by the course
```

## Running a script

Inside the `mariadb` client or a DBeaver SQL editor:

```sql
create database practice;
use practice;
source lab1-setup/first-queries.sql;
```

## Notes

- Every SQL statement ends with `;`
- Always `use <database>;` before creating tables or loading dumps, otherwise data may end up in the wrong database
- In DBeaver, `Ctrl+Enter` runs the current statement
