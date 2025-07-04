-- problem 1: online bookstore inventory

create table if not exists authors (
    author_id int(10) primary key,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    biography text,
    date_of_birth date
);

create table if not exists publishers (
    publisher_id int(10) primary key,
    publishers_name varchar(100) not null unique,
    origin_country varchar(100) not null
);

create table if not exists books (
    book_id int(10) primary key,
    title varchar(100) not null,
    isbn int(13) not null unique,
    publication date not null,
    price decimal(10,2) not null check (price > 0),
    publisher_id INT
);

create table if not exists book_authors (
    -- a table to resolve the many-to-many relationship between books and authors.
    -- it should contain foreign keys referencing the books and authors tables.
    -- the combination of a book and an author must be unique.
    -- if a book or an author is deleted, the corresponding record in this table should also be deleted.
);

-- problem 2: clinic appointment system

create table if not exists patients (
    patient_id int(10),
    first_name varchar(100),
    last_name varchar(100),
    contact int(20),
    patient_record date
);

create table if not exists doctors (
    doctor_id int(10),
    first_name varchar(100),
    last_name varchar(100),
    specialty varchar(100),
    license int(4) 
);

create table if not exists appointments (
    appointment_id int(10),
    -- foreign keys to link to one patient and one doctor
    date_time datetime,
    reason text,
    -- the status of the appointment, which can only be one of the following: 'Scheduled', 'Completed', 'Canceled', 'No-Show'. The default should be 'Scheduled'.
    -- if a patient or doctor is deleted from the system, their appointments should also be deleted.
);

-- problem 3: university course catalog

