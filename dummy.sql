-- ROLES
INSERT INTO roles (role_name)
VALUES
('Admin'),
('Member');

-- USERS
INSERT INTO users (
    user_name,
    birth_date,
    addres,
    id_role
)
VALUES
(
    'Fatawa Imam',
    '2001-12-17',
    'Batam',
    2
);

-- BOOK SHELF
INSERT INTO book_shelf (shelf_name)
VALUES
('Shelf A'),
('Shelf B'),
('Shelf C'),
('Shelf D'),
('Shelf E');

-- OFFICER
INSERT INTO officer (
    name,
    birth_date,
    nik,
    addres,
    id_role,
    id_shelf
)
VALUES
(
    'Andi Saputra',
    '1998-03-10',
    '2171041234567890',
    'Batam',
    1,
    1
);

-- CATEGORY
INSERT INTO category (
    category,
    id_shelf
)
VALUES
('Programming',1),
('Novel',2),
('Self Improvement',3),
('History',4),
('Science',5);

-- BOOK
INSERT INTO book (
    book_title,
    author_name,
    date_of_issue,
    id_shelf,
    id_category
)
VALUES
(
    'Clean Code',
    'Robert C. Martin',
    '2008-08-01',
    1,
    1
),
(
    'The Pragmatic Programmer',
    'Andrew Hunt',
    '1999-10-30',
    1,
    1
),
(
    'Laskar Pelangi',
    'Andrea Hirata',
    '2005-09-20',
    2,
    2
),
(
    'Atomic Habits',
    'James Clear',
    '2018-10-16',
    3,
    3
),
(
    'Sapiens',
    'Yuval Noah Harari',
    '2011-01-01',
    5,
    5
);

-- TRANSACTIONS
INSERT INTO transactions (
    borrow_return,
    id_user,
    id_book,
    id_officer
)
VALUES
(
    '2026-07-20',
    1,
    1,
    1
),
(
    '2026-07-21',
    1,
    2,
    1
),
(
    '2026-07-22',
    1,
    3,
    1
),
(
    '2026-07-23',
    1,
    4,
    1
),
(
    '2026-07-24',
    1,
    5,
    1
);