-- problem 1: online bookstore inventory

create table if not exists authors (
    author_id int(10),
    first_name varchar(100),
    last_name varchar(100),
    biography text,
    date_of_birth date
);

create table if not exists publishers (
    publisher_id int(10),
    publishers_name varchar(100),
    origin_country varchar(100)
);

create table if not exists books (
    book_id int(10),
    book_title varchar(100),
    isbn int(13),
    publication date,
    price decimal(10,2)
    -- publisher_id int,
    -- foreign key (publisher_id) references publishers(publisher_id) on delete set null
);

-- create table if not exists book_authors (
--     book_id int,
--     author_id int,
--     primary key (book_id, author_id),
--     foreign key (book_id) references books(book_id) on delete cascade,
--     foreign key (author_id) references authors(author_id) on delete cascade
-- );

-- problem 2: clinic appointment system

create table if not exists patients (
    patient_id int(10),
    first_name varchar(100),
    last_name varchar(100),
    date_of_birth date,
    phone_no varchar(20),
    patient_record date
);

create table if not exists doctors (
    doctor_id int(10),
    first_name varchar(100),
    last_name varchar(100),
    medical_specialty varchar(100),
    license_year year 
);

create table if not exists appointments (
    appointment_id int(10),
    -- patient_id int,
    -- doctor_id int,
    date_time datetime,
    reason text,
    status enum('Scheduled', 'Completed', 'Canceled', 'No-Show')
    -- foreign key (patient_id) references patients(patient_id) on delete cascade,
    -- foreign key (doctor_id) references doctors(doctor_id) on delete cascade
);

-- problem 3: university course catalog

