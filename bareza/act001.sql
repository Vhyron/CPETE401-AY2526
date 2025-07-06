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
    publisher_id int,
    foreign key (publisher_id) references publishers(publisher_id) on delete set null
);

create table if not exists book_authors (
    book_id int,
    author_id int,
    primary key (book_id, author_id),
    foreign key (book_id) references books(book_id) on delete cascade,
    foreign key (author_id) references authors(author_id) on delete cascade
);

-- problem 2: clinic appointment system

create table if not exists patients (
    patient_id int(10) primary key,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    date_of_birth date not null,
    phone_no varchar(20) unique,
    patient_record date
);

create table if not exists doctors (
    doctor_id int(10) primary key,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    medical_specialty varchar(100) not null,
    license_year year 
);

create table if not exists appointments (
    appointment_id int(10) primary key,
    patient_id int,
    doctor_id int,
    date_time datetime,
    reason text,
    status enum('Scheduled', 'Completed', 'Canceled', 'No-Show') default 'Scheduled',
    foreign key (patient_id) references patients(patient_id) on delete cascade,
    foreign key (doctor_id) references doctors(doctor_id) on delete cascade
);

-- problem 3: university course catalog

