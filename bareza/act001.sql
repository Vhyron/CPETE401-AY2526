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
);

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
    date_time datetime,
    reason text,
    status enum('Scheduled', 'Completed', 'Canceled', 'No-Show')
);

-- problem 3: university course catalog

create table if not exists departments (
    department_id int(10),
    department_name varchar(100),
    department_location varchar(100)
);

create table if not exists courses (
    course_id int(10),
    course_code varchar(10),
    course_title varchar(100),
    credits int(10)
);