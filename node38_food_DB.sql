-- creating CUSTOMERS table
create table customers (
	customer_id int primary key auto_increment,
	first_name varchar(100) not null,
	last_name varchar(100) not null,
	email varchar (150) not null,
	birthday date not null
); 

insert into customers (first_name, last_name, email, birthday) values
('Jessica', 'Brown', 'jessica.brown@mail.com', '1961-03-22'),
('Robert', 'Jones', 'robert.jones@example.com', '1957-11-20'),
('Jane', 'Brown', 'jane.brown@test.com', '1961-05-12'),
('Mary', 'Williams', 'mary.williams@example.com', '1988-05-15'),
('John', 'Davis', 'john.davis@sample.com', '1962-12-04'),
('John', 'Williams', 'john.williams@demo.com', '1951-11-04'),
('Jane', 'Smith', 'jane.smith@test.com', '1958-08-30'),
('John', 'Anderson', 'john.anderson@mail.com', '1971-04-17'),
('Chris', 'Jones', 'chris.jones@demo.com', '1958-05-30'),
('Mary', 'Smith', 'mary.smith@test.com', '1958-12-24'),
('Emily', 'Miller', 'emily.miller@test.com', '1982-06-03'),
('Emily', 'Davis', 'emily.davis@demo.com', '1987-12-05'),
('Emily', 'Smith', 'emily.smith@demo.com', '2000-06-14'),
('Michael', 'Taylor', 'michael.taylor@test.com', '1962-02-17'),
('James', 'Taylor', 'james.taylor@test.com', '1969-10-21'),
('Chris', 'Smith', 'chris.smith@sample.com', '1957-01-01'),
('Michael', 'Davis', 'michael.davis@mail.com', '1965-06-11'),
('Jane', 'Anderson', 'jane.anderson@example.com', '1978-08-31'),
('James', 'Davis', 'james.davis@example.com', '1955-11-15'),
('Sarah', 'Anderson', 'sarah.anderson@mail.com', '1959-06-24');

-- creating USERS table
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(255),
    password VARCHAR(255)
);

INSERT INTO users (full_name, email, password) VALUES
('Alice Johnson', 'person0@mail.com', 'Passw0rd0#'),
('Bob Smith', 'person1@mail.com', 'Passw0rd1#'),
('Charlie Brown', 'person2@mail.com', 'Passw0rd2#'),
('Diana Prince', 'person3@mail.com', 'Passw0rd3#'),
('Ethan Hunt', 'person4@mail.com', 'Passw0rd4#'),
('Fiona Gallagher', 'person5@mail.com', 'Passw0rd5#'),
('George Bluth', 'person6@mail.com', 'Passw0rd6#'),
('Hannah Abbott', 'person7@mail.com', 'Passw0rd7#'),
('Ian Malcolm', 'person8@mail.com', 'Passw0rd8#'),
('Jane Doe', 'person9@mail.com', 'Passw0rd9#'),
('Kevin Hart', 'person10@mail.com', 'Passw0rd10#'),
('Laura Palmer', 'person11@mail.com', 'Passw0rd11#'),
('Michael Scott', 'person12@mail.com', 'Passw0rd12#'),
('Nina Williams', 'person13@mail.com', 'Passw0rd13#'),
('Oscar Wallace', 'person14@mail.com', 'Passw0rd14#'),
('Pam Beesly', 'person15@mail.com', 'Passw0rd15#'),
('Quentin Tarantino', 'person16@mail.com', 'Passw0rd16#'),
('Rachel Green', 'person17@mail.com', 'Passw0rd17#'),
('Steve Jobs', 'person18@mail.com', 'Passw0rd18#'),
('Tina Fey', 'person19@mail.com', 'Passw0rd19#');

select * from users;

-- creating RESTAURANT table
create table restaurant(
	res_id int auto_increment primary key,
	res_name varchar(100),
	image varchar(255),
	description text
);

insert into restaurant(res_name, image, description) values
    ('Cafe Bistro', 'cafe_bistro.jpg', 'A cozy cafe serving coffee, pastries, and sandwiches.'),
    ('Pizza Palace', 'pizza_palace.jpg', 'A family-friendly pizzeria offering a variety of pizzas and Italian dishes.'),
    ('Sushi Heaven', 'sushi_heaven.jpg', 'A sushi restaurant known for its fresh and creative sushi rolls.'),
    ('Burger Shack', 'burger_shack.jpg', 'A fast-food joint specializing in burgers, fries, and milkshakes.'),
    ('Mediterranean Grill', 'mediterranean_grill.jpg', 'A restaurant offering Mediterranean cuisine with a focus on grilled dishes.'),
    ('Taco Fiesta', 'taco_fiesta.jpg', 'A Mexican restaurant serving tacos, burritos, and margaritas.'),
    ('Thai Spice', 'thai_spice.jpg', 'An authentic Thai restaurant with a menu of spicy and flavorful dishes.'),
    ('Seafood Cove', 'seafood_cove.jpg', 'A seafood restaurant by the beach, known for its fresh catches of the day.'),
    ('Indian Delight', 'indian_delight.jpg', 'An Indian restaurant offering a variety of curry dishes and naan bread.'),
    ('Steakhouse Grill', 'steakhouse_grill.jpg', 'A steakhouse known for its juicy steaks and hearty sides.'),
    ('Vegetarian Oasis', 'vegetarian_oasis.jpg', 'A vegetarian restaurant with a menu of plant-based dishes and smoothies.'),
    ('French Bistro', 'french_bistro.jpg', 'A charming bistro offering French cuisine and a selection of wines.'),
    ('Noodle House', 'noodle_house.jpg', 'A noodle house serving a range of Asian noodle dishes and soups.'),
    ('BBQ Pit', 'bbq_pit.jpg', 'A barbecue restaurant specializing in smoked meats and BBQ sauces.'),
    ('Greek Taverna', 'greek_taverna.jpg', 'A Greek restaurant with a menu of gyros, souvlaki, and baklava.'),
    ('Pasta Paradise', 'pasta_paradise.jpg', 'An Italian restaurant known for its pasta dishes and homemade sauces.'),
    ('Diner Delights', 'diner_delights.jpg', 'A classic American diner serving breakfast, burgers, and shakes.'),
    ('Vegan Vibes', 'vegan_vibes.jpg', 'A vegan restaurant offering a variety of plant-based options.'),
    ('Sushi Sensation', 'sushi_sensation.jpg', 'A sushi bar known for its omakase menu and fresh sashimi.'),
    ('Mexican Cantina', 'mexican_cantina.jpg', 'A lively Mexican cantina with a menu of tacos, enchiladas, and margaritas.');
    
-- creating RATE_RES restaurant
create table rate_res(
	user_id int,
		foreign key(user_id) REFERENCES users(user_id),
	res_id int,
		foreign key(res_id) REFERENCES restaurant(res_id),
	amount int,
	date_rate date
);

insert into rate_res(user_id, res_id, amount, date_rate) VALUES
(20, 2, 5, '2023-12-16'), 
(13, 3, 5, '2023-03-02'), 
(5, 12, 1, '2023-01-07'), 
(19, 9, 3, '2023-09-18'), 
(5, 8, 1, '2023-05-04'), 
(11, 3, 3, '2023-11-15'), 
(5, 20, 5, '2023-02-17'), 
(9, 10, 5, '2023-03-01'), 
(1, 13, 3, '2023-01-30'), 
(10, 13, 4, '2023-02-01'), 
(2, 2, 2, '2023-07-07'), 
(10, 19, 1, '2023-05-10'), 
(3, 2, 3, '2023-06-14'), 
(12, 4, 5, '2023-06-04'), 
(10, 11, 3, '2023-11-26'), 
(11, 19, 5, '2023-09-12'), 
(12, 6, 4, '2023-01-22'), 
(18, 12, 4, '2023-11-23'), 
(17, 15, 3, '2023-09-21'), 
(17, 13, 4, '2023-08-31');

-- creating LIKE_RES restaurant
create table like_res (
	user_id int,
		foreign key(user_id) REFERENCES users(user_id),
	res_id int,
		foreign key(res_id) REFERENCES restaurant(res_id),
	date_like date
);

insert into like_res(user_id, res_id, date_like) values
	(1, 12, '2023-10-12'),
	(13, 16, '2023-03-11'),
	(3, 2, '2023-12-16'),
	(15, 5, '2023-11-06'),
	(16, 10, '2023-06-09'),
	(15, 3, '2023-11-20'),
	(14, 13, '2023-09-19'),
	(4, 6, '2023-03-27'),
	(3, 20, '2023-11-29'),
	(19, 17, '2022-12-27'),
	(14, 18, '2023-06-17'),
	(17, 4, '2023-07-30'),
	(11, 11, '2023-02-28'),
	(9, 7, '2023-12-08'),
	(11, 7, '2023-07-29'),
	(2, 1, '2023-05-18'),
	(15, 1, '2023-01-08'),
	(8, 5, '2023-01-01'),
	(9, 1, '2023-12-14'),
	(8, 10, '2023-05-07');
	
select * from like_res;

-- find 5 users who have liked the restaurants most
select u.full_name, count(lr.res_id) as "number of likes"
from like_res lr inner join users u on lr.user_id = u.user_id
group by u.full_name
order by count(lr.res_id) desc 
limit 5;

/* left join
select *
from users u left join like_res lr 
on  u.user_id = lr.user_id; */

-- FIND 2 RESTAURENTS WITH THE MOST LIKES
select r.res_id, r.res_name, COUNT(l.res_id) as "number of likes"
from like_res l 
inner join restaurant r on r.res_id=l.res_id
group by r.res_name, r.res_id
order by COUNT(l.res_id) desc 
limit 2;

-- create FOOD_TYPE table
create table food_type(
type_id int primary key auto_increment, type_name varchar(255)
);

INSERT INTO food_type (type_name) VALUES
('Italian'),
('Pizza'),
('Salad'),
('Stir Fry'),
('Mexican'),
('Curry'),
('Sushi'),
('Grill'),
('Soup'),
('Wrap'),
('Chinese'),
('Thai'),
('Chili'),
('Healthy'),
('Seafood'),
('Noodles'),
('British'),
('Indian'),
('Vegetarian'),
('Pasta');


-- creating FOOD table
create table food (
food_id int primary key auto_increment,
food_name varchar(255), image varchar(255), price float, description varchar(255), 
type_id int, foreign key (type_id) references food_type(type_id)
);

INSERT INTO food (food_name, image, price, description, type_id) VALUES
('Margherita Pizza', 'margherita.jpg', 7.99, 'Classic pizza with fresh tomatoes, mozzarella cheese, and basil', 2),
('Caesar Salad', 'caesar_salad.jpg', 5.99, 'Crispy romaine lettuce with parmesan cheese and croutons', 3),
('Beef Stir Fry', 'beef_stir_fry.jpg', 8.99, 'Stir-fried beef with vegetables in a savory sauce', 4),
('Tacos', 'tacos.jpg', 6.99, 'Corn tortillas filled with seasoned meat, lettuce, and cheese', 5),
('Chicken Curry', 'chicken_curry.jpg', 9.49, 'Spicy chicken curry served with rice', 6),
('California Roll', 'california_roll.jpg', 5.49, 'Sushi roll with crab meat, avocado, and cucumber', 7),
('Grilled Salmon', 'grilled_salmon.jpg', 10.99, 'Grilled salmon fillet with a side of vegetables', 8),
('Tomato Soup', 'tomato_soup.jpg', 4.99, 'Rich and creamy tomato soup with herbs', 9),
('Turkey Wrap', 'turkey_wrap.jpg', 7.49, 'Whole wheat wrap with turkey, lettuce, tomato, and cheese', 10),
('Kung Pao Chicken', 'kung_pao_chicken.jpg', 8.99, 'Spicy Sichuan dish with chicken, peanuts, and vegetables', 11),
('Pad Thai', 'pad_thai.jpg', 8.49, 'Thai noodle dish with shrimp, peanuts, egg, and bean sprouts', 12),
('Beef Chili', 'beef_chili.jpg', 6.49, 'Hearty chili with beef, beans, and a blend of spices', 13),
('Kale Smoothie', 'kale_smoothie.jpg', 3.99, 'Healthy green smoothie with kale, banana, and almond milk', 14),
('Shrimp Scampi', 'shrimp_scampi.jpg', 11.99, 'Shrimp cooked in butter, garlic, and lemon juice', 15),
('Ramen', 'ramen.jpg', 7.99, 'Japanese noodle soup with pork, egg, and scallions', 16),
('Fish and Chips', 'fish_and_chips.jpg', 9.99, 'Traditional British battered fish with fries', 17),
('Butter Chicken', 'butter_chicken.jpg', 9.49, 'Indian butter chicken served with naan bread', 18),
('Veggie Burger', 'veggie_burger.jpg', 6.99, 'Plant-based burger patty with lettuce, tomato, and sauce', 19),
('Spaghetti Carbonara', 'spaghetti_carbonara.jpg', 8.49, 'Italian pasta dish with eggs, cheese, bacon, and pepper', 20),
('Falafel Wrap', 'falafel_wrap.jpg', 5.99, 'Middle Eastern wrap with falafel, hummus, and tahini sauce', 20);

-- create ORDERS table
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INTEGER,
    foreign key (user_id) references users (user_id),
    food_id INTEGER,
    foreign key (food_id) references food (food_id),
    amount INTEGER, 
    code VARCHAR(255), 
    arr_sub_id VARCHAR (255)
);

ALTER TABLE orders
ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY FIRST;


INSERT INTO orders (user_id, food_id, amount, code, arr_sub_id) VALUES
(1, 10, 2, 'CODE200', 'SUB200'),
(1, 15, 1, 'CODE201', 'SUB201'),
(2, 3, 2, 'CODE202', 'SUB202'),
(3, 5, 1, 'CODE203', 'SUB203'),
(3, 7, 3, 'CODE204', 'SUB204'),
(3, 11, 1, 'CODE205', 'SUB205'),
(4, 2, 2, 'CODE206', 'SUB206'),
(5, 8, 1, 'CODE207', 'SUB207'),
(6, 14, 2, 'CODE208', 'SUB208'),
(7, 1, 1, 'CODE209', 'SUB209'),
(8, 6, 1, 'CODE210', 'SUB210'),
(9, 12, 1, 'CODE211', 'SUB211'),
(10, 9, 1, 'CODE212', 'SUB212'),
(11, 4, 1, 'CODE213', 'SUB213'),
(12, 13, 1, 'CODE214', 'SUB214'),
(13, 3, 1, 'CODE215', 'SUB215'),
(14, 16, 1, 'CODE216', 'SUB216'),
(15, 17, 1, 'CODE217', 'SUB217'),
(16, 18, 1, 'CODE218', 'SUB218'),
(17, 20, 1, 'CODE219', 'SUB219');



-- creating SUB_FOOD table
create table sub_food (
sub_id int primary key auto_increment,
sub_name varchar(255), sub_price float,
food_id int, foreign key (food_id) references food(food_id)
);



-- FIND THE USER WITH THE MOST ORDERS
SELECT u.user_id, u.full_name, SUM(o.amount) AS "number of orders"
FROM users u
INNER JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_id, u.full_name
ORDER BY SUM(o.amount) DESC
LIMIT 1;

-- find the person that did not make any orders, did not like any restaurants, and did not rate any restaurant
select u.user_id, u.full_name
from users u
left join orders o on u.user_id = o.user_id
left join like_res lr on u.user_id = lr.user_id
left join rate_res rr on u.user_id = rr.user_id
where o.user_id is null AND lr.user_id is null AND rr.user_id is null;
 



