insert into people (full_name, nat_code) values
('Reza', '0088776655'),
('Sara', '0099887766'),
('Nima', '0077665544');

insert into learners (person_ref, sid, major) values
(1, '401223344', 'Math'),
(3, '401998877', 'Physics');

insert into instructors (person_ref, emp_code, faculty, rank_title) values
(2, '2002', 'Math', 'Associate');

insert into meals (meal_name, cost) values
('Pasta', 65000),
('Chicken', 85000),
('Stew', 55000);

insert into meal_schedule (meal_date, meal_ref) values
('2024-04-10', 1),
('2024-04-10', 2),
('2024-04-11', 2),
('2024-04-11', 3);

insert into reservations (person_ref, res_date) values
(1, '2024-04-10'),
(2, '2024-04-10');

insert into res_items (res_ref, schedule_ref, qty) values
(1, 1, 2),
(1, 2, 1),
(2, 2, 1);
