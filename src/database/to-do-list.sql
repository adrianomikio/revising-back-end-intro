-- Active: 1674653502275@@127.0.0.1@3306

CREATE TABLE
    users (
        id TEXT PRIMARY KEY UNIQUE NOT NULL,
        name TEXT NOT NULL,
        email TEXT UNIQUE NOT NULL,
        password TEXT NOT NULL
    );

CREATE TABLE
    tasks (
        id TEXT PRIMARY KEY UNIQUE NOT NULL,
        title TEXT NOT NULL,
        description TEXT NOT NULL,
        created_at TEXT DEFAULT(DATETIME()) NOT NULL,
        status INTEGER DEFAULT(0) NOT NULL
    );

CREATE TABLE
    users_tasks(
        user_id TEXT NOT NULL,
        task_id TEXT NOT NULL,
        FOREIGN KEY (user_id) REFERENCES users(id),
        FOREIGN KEY (task_id) REFERENCES task(id)
    );

SELECT * FROM users;

SELECT * FROM tasks;

SELECT * FROM users_tasks;

INSERT INTO
    users (id, name, email, password)
VALUES (
        "u001",
        "Adriano",
        "adriano@email.com",
        "adriano'sPassword"
    ), (
        "u002",
        "Mayara",
        "mayara@email.com",
        "mayara'sPassword"
    );

INSERT INTO
    tasks (
        id,
        title,
        description,
        created_at
    )
VALUES (
        "t001",
        "create tables",
        "creating tables with essential columns and respective datatypes",
        DATETIME('now', 'localtime')
    ), (
        "t002",
        "populate tables",
        "populate tables assigning data to each necessary column",
        DATETIME('now', 'localtime')
    );

INSERT INTO
    users_tasks(user_id, task_id)
VALUES ("u001", "t001"), ("u002", "t002");

UPDATE users SET WHERE;

UPDATE tasks SET WHERE;

UPDATE users_tasks SET WHERE;

DROP TABLE users;

DROP TABLE tasks;

DROP TABLE users_tasks;