CREATE TABLE roles (
    id_role INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL
);

CREATE TABLE users (
    id_user INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    addres VARCHAR(50) NOT NULL,

    id_role INTEGER NOT NULL,

    FOREIGN KEY (id_role) REFERENCES roles(id_role)
);

CREATE TABLE book_shelf (
    id_shelf INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    shelf_name VARCHAR(50)
);

CREATE TABLE officer (
    id_officer INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    nik VARCHAR(16) NOT NULL,
    addres VARCHAR(50) NOT NULL,

    id_role INTEGER NOT NULL,
    id_shelf INTEGER NOT NULL,

    FOREIGN KEY (id_role) REFERENCES roles(id_role),
    FOREIGN KEY (id_shelf) REFERENCES book_shelf(id_shelf)
);

CREATE TABLE category (
    id_category INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    category VARCHAR(50) NOT NULL,

    id_shelf INTEGER NOT NULL,

    FOREIGN KEY (id_shelf) REFERENCES book_shelf(id_shelf)
);

CREATE TABLE book (
    id_book INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    book_title VARCHAR(50) NOT NULL,
    author_name VARCHAR(50) NOT NULL,
    date_of_issue DATE NOT NULL,

    id_shelf INTEGER NOT NULL,
    id_category INTEGER NOT NULL,

    FOREIGN KEY (id_shelf) REFERENCES book_shelf(id_shelf),
    FOREIGN KEY (id_category) REFERENCES category(id_category)
);

CREATE TABLE transactions(
    id_transaction INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    borrow_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    borrow_return DATE NOT NULL,

    id_user INTEGER NOT NULL,
    id_book INTEGER NOT NULL,
    id_officer INTEGER NOT NULL,

    FOREIGN KEY (id_user) REFERENCES users(id_user),
    FOREIGN KEY (id_book) REFERENCES book(id_book),
    FOREIGN KEY (id_officer) REFERENCES officer(id_officer)
);

-- DROP TABLE book, book_shelf, category, officer, roles, transactions, users;id_user