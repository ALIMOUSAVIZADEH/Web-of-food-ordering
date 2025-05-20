create table people (
    person_id int primary key auto_increment,
    full_name nvarchar(50) not null,
    nat_code nvarchar(50) unique not null
);

create table learners (
    learner_id int primary key auto_increment,
    person_ref int unique not null,
    sid nvarchar(50) unique not null,
    major nvarchar(50) not null,

    foreign key (person_ref) references people(person_id)
);

create table instructors (
    instructor_id int primary key auto_increment,
    person_ref int unique not null,
    emp_code nvarchar(50) unique not null,
    faculty nvarchar(50) not null,
    rank_title nvarchar(50) not null,

    foreign key (person_ref) references people(person_id)
);

create table meals (
    meal_id int primary key auto_increment,
    meal_name nvarchar(50) not null,
    cost int not null
);

create table meal_schedule (
    schedule_id int primary key auto_increment,
    meal_date date not null,
    meal_ref int not null,

    foreign key (meal_ref) references meals(meal_id),
    unique (meal_date, meal_ref)
);

create table reservations (
    res_id int primary key auto_increment,
    person_ref int not null,
    res_date date not null,

    foreign key (person_ref) references people(person_id),
    unique (person_ref, res_date)
);

create table res_items (
    item_id int primary key auto_increment,
    res_ref int not null,
    schedule_ref int not null,
    qty int not null,

    foreign key (res_ref) references reservations(res_id),
    foreign key (schedule_ref) references meal_schedule(schedule_id),
    unique (res_ref, schedule_ref)
);
