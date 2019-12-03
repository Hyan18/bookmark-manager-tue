## User Story

```
As a user,
So I can save important webpages,
I would like to see a list of bookmarks.
```
![class diagram](./images/class_diagram.png)

## Setup

Setting up the SQL development database

```
> psql postgres
> CREATE DATABASE bookmark_manager;
> \c bookmark_manager
> CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
```

Setting up the SQL test database

```
> psql postgres
> CREATE DATABASE bookmark_manager_test;
> \c bookmark_manager
> CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
```
