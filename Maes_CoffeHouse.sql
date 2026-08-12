 DROP DATABASE IF EXISTS `mae_coffehouse`;
CREATE DATABASE `mae_coffeehouse`;
USE `mae_coffeehouse`;



CREATE TABLE mae_employee (
  emp_id INT NOT NULL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  age INT,
  gender VARCHAR(10),
  birth_date DATE,
  employment_date DATE,
  occupation_role VARCHAR(50),
  PRIMARY KEY (emp_id)
);

CREATE TABLE mae_coffee (
  coffee_id INT NOT NULL,
  coffee_name VARCHAR(50),
  coffee_content VARCHAR(50),
 coffee_calories INT,
  PRIMARY KEY (coffee_id)
);

CREATE TABLE mae_department (
  dept_id INT NOT NULL,
  dept_name VARCHAR(50),
  dept_manager VARCHAR(50),
  PRIMARY KEY (dept_id)
);



CREATE TABLE mae_inventory (
  product_id INT NOT NULL,
  product_name VARCHAR(50),
  product_category VARCHAR(50),
  quantity INT,
  PRIMARY KEY (product_id)
);

CREATE TABLE maecoffeehouse_sales (
  sales_id INT NOT NULL,
  customer_name VARCHAR(50),
  sales_date DATE,
  quantity INT,
  price INT,
  PRIMARY KEY (sales_id)
);

INSERT INTO mae_employee (emp_id, last_name , age , gender , birth_date , employment_date , occupation_role)
VALUES (1,  'Santos',      28, 'Female',  '1996-03-14', '2021-06-01', 'Barista'),
(2,  'Kim',         34, 'male',    '1990-07-22', '2019-02-15', 'shift manager'),
(3,  'Johnson',     NULL, 'Female','1988-11-05', '2018-09-10', 'Barista'),
(4,  'Reyes',       22, 'MALE',    '2002-01-30', '2023-04-01', 'cashier'),
(5,  'Nguyen',      45, NULL,      '1979-05-17', '2015-03-20', 'Store Manager'),
(6,  'Williams',    31, 'female',  '1993-08-09', '2020-11-11', 'BARISTA'),
(7,  'Okafor',      27, 'Male',    '1997-12-25', '2022-07-04', 'Barista'),
(8,  'Martinez',    19, 'female',  '2005-02-28', '2024-01-15', 'Cashier'),
(9,  'Patel',       38, 'Male',    '1986-06-03', '2017-05-30', 'Inventory Clerk'),
(10, 'Thompson',    52, 'female',  '1972-09-19', '2010-08-22', 'store manager'),  -- duplicate role type
(11, 'Dubois',      NULL, 'Male',  '1995-04-11', '2021-03-17', NULL),
(12, 'Chen',        29, 'Femle',   '1995-10-07', '2022-08-01', 'Barista'),        -- typo: Femle
(13, 'Okonkwo',     33, 'male',    '1991-01-23', '2016-12-05', 'Shift Manager'),
(14, 'Garcia',      24, 'Female',  '2000-06-15', '2023-09-01', 'barista'),
(15, 'Smith',       41, 'FEMALE',  '1983-03-28', '2013-04-14', 'Head Barista'),
(16, 'Brown',       26, 'male',    '1998-11-02', '2023-06-20', 'Cashier'),
(17, 'Lee',          0, 'Female',  '2001-07-30', '2024-02-01', 'Barista'),        -- age = 0 (dirty)
(18, 'Adeyemi',     36, 'Male',    '1988-05-12', '2019-10-09', 'Inventory Clerk'),
(19, 'Rivera',      23, 'female',  '2001-09-04', '2024-03-15', 'cashier'),
(20, 'Murphy',      NULL, NULL,    NULL,          '2022-01-10', 'Barista');        -- multiple NULLs);

INSERT INTO  mae_coffee (coffee_id, coffee_name, coffee_content, coffee_calories)
VALUES (1,  'Espresso',           'Espresso shot',                                    5),
(2,  'Cappuccino',         'Espresso, steamed milk, milk foam',               120),
(3,  'Latte',              'Espresso, steamed milk',                          190),
(4,  'Mocha',              'Espresso, chocolate syrup, steamed milk, whip',   350),
(5,  'Americano',          'Espresso, hot water',                              15),
(6,  'macchiato',          'Espresso, dash of milk foam',                      30),  -- lowercase name
(7,  'Flat White',         'Ristretto shots, microfoam milk',                 170),
(8,  'Caramel Frappe ',    'Espresso, caramel, milk, ice, whip cream',        420),  -- trailing space
(9,  'Green Tea Latte',    'Matcha, steamed milk, sugar',                     260),
(10, 'Vanilla Bean Latte', 'vanilla syrup, steamed milk, espresso',           310),
(11, 'Cold Brew',          'Cold-steeped coffee, water',                       20),
(12, 'Pumpkin Spice Latte','Espresso, pumpkin sauce, steamed milk, spices',   380),
(13, 'Caramel Macchiato',  NULL,                                              250),  -- missing content
(14, 'Iced Coffe',         'Espresso, ice, milk',                             140),  -- typo: Coffe
(15, 'Hot Chocolate',      'Steamed milk, chocolate syrup, whip cream',      9999);  -- unrealistic calories

INSERT INTO  mae_department (dept_id, dept_name, depat_manager)
VALUES (1, 'Front of House',  'Nguyen'),
(2, 'Kitchen',         NULL),               -- missing manager
(3, 'Inventory',       'Patel'),
(4, 'front of house',  'Thompson'),         -- duplicate dept different case
(5, 'Management',      'Nguyen'),           -- same manager in two depts
(6, 'Catering ',       'Murphy');           -- trailing space in dept name

INSERT INTO  mae_inventory (product_id, product_name, product_category, quantity)
VALUES (1,  'Arabica Coffee Beans',    'Coffee Beans',    50),
(2,  'Robusta Coffee Beans',    'Coffee Beans',    30),
(3,  'Decaf Coffee Beans',      'Coffee Beans',    20),
(4,  'Whole Milk',              'Dairy',           80),
(5,  'Oat Milk',                'Dairy',           60),
(6,  'Almond Milk',             'dairy',           40),          -- lowercase category
(7,  'Soy Milk',                'Dairy',           35),
(8,  'Heavy Cream',             'Dairy',           25),
(9,  'Vanilla Syrup',           'Syrups',         100),
(10, 'Caramel Syrup',           'Syrups',          90),
(11, 'Hazelnut Syrup',          'syrups',          70),          -- lowercase category
(12, 'Pumpkin Spice Syrup',     'Syrups',          45),
(13, 'Chocolate Sauce',         'Syrups',          55),
(14, 'Matcha Powder',           'Powders',         20),
(15, 'Cocoa Powder',            'Powders',         30),
(16, 'Cinnamon',                'Spices',          50),
(17, 'Nutmeg',                  'spices',          NULL),        -- NULL quantity
(18, 'Paper Cups 12oz',         'Supplies',       500),
(19, 'Paper Cups 16oz',         'Supplies',       400),
(20, 'Paper Cups 8oz',          'supplies',       300),          -- lowercase category
(21, 'Plastic Lids',            'Supplies',       600),
(22, 'Coffee Sleeves',          'Supplies',       350),
(23, 'Stir Sticks',             'Supplies',        -5),          -- negative quantity (dirty)
(24, 'Napkins',                 'Supplies',       900),
(25, 'Sugar Packets',           'Condiments',     400),
(26, 'Splenda Packets',         'Condiments',     300),
(27, 'Honey',                   'Condiments',      60),
(28, 'Whipped Cream Cans',      'Dairy',           20),
(29, 'Espresso Cups',           'Supplies',       200),
(30, 'Arabica Coffee Beans',    'Coffee Beans',    15),          -- duplicate product name (dirty)
(31, 'Cold Brew Concentrate',   'Coffee Beans',    18),
(32, 'Chai Concentrate',        NULL,              22),          -- NULL category
(33, 'Caramel Sauce',           'Syrups',          40),
(34, 'Brown Sugar Syrup',       'Syrups',          55),
(35, 'Coconut Milk',            'Dairy',           28);




INSERT INTO maecoffeehouse_sales (sales_id, customer_name, sales_date, quantity, price)
VALUES
(1,   'James Holloway',    '2024-01-03', 2,    9.50),
(2,   'Maria Santos',      '2024-01-03', 1,    4.75),
(3,   'Kevin Park',        '2024-01-04', 3,   14.25),
(4,   'linda Tran',        '2024-01-04', 1,    5.00),   -- lowercase first name
(5,   'Ahmed Al-Farsi',    '2024-01-05', 2,    8.00),
(6,   'Priya Nair',        '2024-01-05', NULL, 6.50),   -- NULL quantity
(7,   'Tom Nguyen',        '2024-01-06', 1,    4.75),
(8,   'Sophie Laurent',    '2024-01-06', 4,   19.00),
(9,   'Marcus Webb',       '2024-01-07', 1,    5.25),
(10,  'Jessica Wong',      '2024-01-07', 2,   10.50),
(11,  'Daniel Osei',       '2024-01-08', 3,   15.75),
(12,  'Rachel Kim',        '2024-01-08', 1,    4.75),
(13,  'Carlos Mendez',     '2024-01-09', 2,    8.50),
(14,  'Anna Kowalski',     '2024-01-09', 1,    5.00),
(15,  'Brian Foster',      '2024-01-10', 2,    9.00),
(16,  'Yuki Tanaka',       '2024-01-10', 1,    4.75),   -- different date format
(17,  'Grace Adeyemi',     '2024-01-11', 3,   14.25),
(18,  'Noah Patel',        '2024-01-11', 1,    6.00),
(19,  'Olivia Brooks',     '2024-01-12', 2,   11.00),
(20,  'Ethan Clarke',      '2024-01-12', 4,   20.00),
(21,  'Isabella Ross',     '2024-01-13', 1,    4.75),
(22,  'Liam Okafor',       '2024-01-13', 2,    9.50),
(23,  'Emma Rivera',       '2024-01-14', 3,   14.25),
(24,  'Aiden Murphy',      '2024-01-14', 1,    5.25),
(25,  'Mia Johnson',       '2024-01-15', 2,   10.00),
(26,  'Lucas Chen',        '2024-01-15', 1,    4.75),
(27,  'Charlotte Lee',     '2024-01-16', 3,   15.75),
(28,  'Mason Garcia',      '2024-01-16', 2,    8.00),
(29,  'Amelia Smith',      '2024-01-17', 1,    6.50),
(30,  'Harper Williams',   '2024-01-17', 4,   22.00),
(31,  'Elijah Brown',      '2024-01-18', 1,    4.75),
(32,  'Abigail Davis',     '2024-01-18', 2,    9.00),
(33,  'James Holloway',    '2024-01-19', 1,    4.75),   -- repeat customer
(34,  'Scarlett Moore',    '2024-01-19', 3,   14.25),
(35,  'Henry Taylor',      '2024-01-20', 2,   10.50),
(36,  'Aria Jackson',      '2024-01-20', 1,    5.25),
(37,  'Sebastian Harris',  '2024-01-21', 2,    8.50),
(38,  'Penelope White',    '2024-01-21', 1,    4.75),
(39,  'Jack Martin',       '2024-01-22', 3,   16.50),
(40,  'Layla Thompson',    '2024-01-22', 2,    9.00),
(41,  'Theodore Martinez', '2024-01-23', 1,    6.00),
(42,  'Riley Robinson',    '2024-01-23', 4,   19.00),
(43,  'Violet Clark',      '2024-01-24', 1,    4.75),
(44,  'Grayson Rodriguez', '2024-01-24', 2,   11.50),
(45,  'Stella Lewis',      '2024-01-25', 3,   14.25),
(46,  'Hudson Lee',        '2024-01-25', 1,    5.00),
(47,  'Aurora Walker',     '2024-01-26', 2,    9.50),
(48,  'Ezra Hall',         '2024-01-26', 1,    4.75),
(49,  'Savannah Allen',    '2024-01-27', 2,    8.00),
(50,  'Wyatt Young',       '2024-01-27', 3,   15.00),
(51,  'Bella Hernandez',   '2024-01-28', 1,    6.50),
(52,  'julian King',       '2024-01-28', 2,    9.00), 
(53,  'Chloe Wright',      '2024-01-29', 1,    4.75),
(54,  'Mateo Lopez',       '2024-01-29', 4,   21.00),
(55,  'Zoey Hill',         '2024-01-30', 2,   10.00),
(56,  'Leo Scott',         '2024-01-30', 1,    5.25),
(57,  'Hannah Green',      '2024-01-31', 3,   14.25),
(58,  'Ryan Adams',        '2024-01-31', 2,    8.50),
(59,  'Nora Baker',        '2024-02-01', 1,    4.75),
(60,  'Luke Gonzalez',     '2024-02-01', 2,   11.00),
(61,  'Zoe Nelson',        '2024-02-02', 3,   15.75),
(62,  'Owen Carter',       '2024-02-02', 1,    4.75),
(63,  'Lily Mitchell',     '2024-02-03', 2,    9.00),
(64,  'Caleb Perez',       '2024-02-03', 1,    5.00),
(65,  'Eleanor Roberts',   '2024-02-04', 4,   20.00),
(66,  'Isaac Turner',      '2024-02-04', 2,    8.00),
(67,  'Hannah Phillips',   '2024-02-05', 1,    6.00),
(68,  'Natalie Campbell',  '2024-02-05', 3,   14.25),
(69,  'Eli Parker',        '2024-02-06', 2,   10.50),
(70,  'Addison Evans',     '2024-02-06', 1,    4.75),
(71,  'Jace Edwards',      '2024-02-07', 2,    9.50),
(72,  'Brooklyn Collins',  '2024-02-07', 3,   15.00),
(73,  'Axel Stewart',      '2024-02-08', 1,    5.25),
(74,  'Paisley Sanchez',   '2024-02-08', 2,    8.50),
(75,  'Easton Morris',     '2024-02-09', 1,    4.75),
(76,  'Genesis Rogers',    '2024-02-09', 4,   22.00),
(77,  'Rowan Reed',        '2024-02-10', 2,   10.00),
(78,  'Skylar Cook',       '2024-02-10', 1,    5.00),
(79,  'Piper Morgan',      '2024-02-11', 3,   16.50),
(80,  'Roman Bell',        '2024-02-11', 2,    8.00),
(81,  'Luna Murphy',       '2024-02-12', 1,    4.75),
(82,  'Knox Bailey',       '2024-02-12', 2,   11.00),
(83,  'Nora Ward',         '2024-02-13', 3,   15.75),
(84,  'Zion Cox',          '2024-02-13', 1,    6.50),
(85,  'Ivy Howard',        '2024-02-14', 4,   19.00),
(86,  'Silas Price',       '2024-02-14', 2,    9.00),
(87,  'Ellie Flores',      '2024-02-15', 1,    4.75),
(88,  'Miles Bennett',     '2024-02-15', 3,   14.25),
(89,  'Ariana Sanders',    '2024-02-16', 2,    8.50),
(90,  'Declan Hughes',     '2024-02-16', 1,    5.25),
(91,  'Magnolia Bryant',   '2024-02-17', 2,   10.50),
(92,  'Reid Alexander',    '2024-02-17', 1,    4.75),
(93,  'Rosalie Russell',   '2024-02-18', 3,   15.00),
(94,  'Beau Griffin',      '2024-02-18', 2,    9.50),
(95,  'Freya Diaz',        '2024-02-19', 1,    6.00),
(96,  'Remy Hayes',        '2024-02-19', 4,   21.00),
(97,  'Juniper Myers',     '2024-02-20', 2,    8.00),
(98,  'Crew Ford',         '2024-02-20', 1,    4.75),
(99,  'Wren Hamilton',     '2024-02-21', 3,   16.50),
(100, 'Atlas Graham',      '2024-02-21', 2,   10.00),
(101, 'Cecilia Sullivan',  '2024-02-22', 1,    5.00),
(102, 'Finn Wallace',      '2024-02-22', 2,    9.00),
(103, 'Hadley Woods',      '2024-02-23', 3,   14.25),
(104, 'Jasper Cole',       '2024-02-23', 1,    4.75),
(105, 'Willow West',       '2024-02-24', 2,   11.50),
(106, 'Arrow Jordan',      '2024-02-24', 1,    5.25),
(107, 'Clover Owens',      '2024-02-25', 4,   20.00),
(108, 'River Reynolds',    '2024-02-25', 2,    8.50),
(109, 'Emberlynn Fisher',  '2024-02-26', 1,    4.75),
(110, 'Cannon Ellis',      '2024-02-26', 3,   15.75),
(111, 'Daphne Harrison',   '2024-02-27', 2,    9.00),
(112, 'Lennox Gibson',     '2024-02-27', 1,    6.50),
(113, 'Ophelia Mcdonald',  '2024-02-28', 2,   10.50),
(114, 'Winston Cruz',      '2024-02-28', 1,    4.75),
(115, 'Magnolia Bryant',   '2024-02-28', 2,    8.00),  
(116, 'Blaine Marshall',   '2024-03-01', 3,   14.25),
(117, 'Cordelia Ortiz',    '2024-03-01', 1,    5.00),
(118, 'Dash Gomez',        '2024-03-02', 2,    9.50),
(119, 'Elspeth Murray',    '2024-03-02', 4,   22.00),
(120, 'Fletcher Freeman',  '2024-03-03', 1,    4.75),
(121, 'Gwendolyn Wells',   '2024-03-03', 2,    8.00),
(122, 'Harvey Webb',       '2024-03-04', 3,   16.50),
(123, 'Indigo Simpson',    '2024-03-04', 1,    5.25),
(124, 'Jacoby Stevens',    '2024-03-05', 2,   10.00),
(125, 'Kaia Tucker',       '2024-03-05', 1,    4.75),
(126, 'Leopold Porter',    '2024-03-06', 3,   15.00),
(127, 'Meadow Hunter',     '2024-03-06', 2,    9.00),
(128, 'Nash Hicks',        '2024-03-07', 1,    6.00),
(129, 'Odessa Crawford',   '2024-03-07', 4,   19.00),
(130, 'Percival Henry',    '2024-03-08', 2,    8.50),
(131, 'Quincy Boyd',       '2024-03-08', 1,    4.75),
(132, 'Rosalind Mason',    '2024-03-09', 3,   14.25),
(133, 'Shepard Simmons',   '2024-03-09', 2,   11.00),
(134, 'Thaddeus Arnold',   '2024-03-10', 1,    5.00),
(135, 'Uma Stone',         '2024-03-10', 2,    9.50),
(136, NULL,                '2024-03-11', 1,    4.75),  -- NULL customer name
(137, 'Vesper Watkins',    '2024-03-11', 3,   15.75),
(138, 'Wilder Olson',      '2024-03-12', 2,    8.00),
(139, 'Xena Carroll',      '2024-03-12', 1,    6.50),
(140, 'Yara Duncan',       '2024-03-13', 4,   20.00),
(141, 'Zander Snyder',     '2024-03-13', 2,   10.50),
(142, 'Alara Hart',        '2024-03-14', 1,    4.75),
(143, 'Blaze Rice',        '2024-03-14', 3,   16.50),
(144, 'Calista Long',      '2024-03-15', 2,    9.00),
(145, 'Darian Butler',     '2024-03-15', 1,    5.25),
(146, 'Elowen Ross',       '2024-03-16', 2,    8.50),
(147, 'Fallon Sanders',    '2024-03-16', 1,    4.75),
(148, 'Galen Price',       '2024-03-17', 3,   14.25),
(149, 'Helena Bennett',    '2024-03-17', 4,   21.00),
(150, 'Idris Coleman',     '2024-03-18', 2,   10.00),
(151, 'Jovie Jenkins',     '2024-03-18', 1,    5.00),
(152, 'Kove Patterson',    '2024-03-19', 2,    9.50),
(153, 'Lyra Hughes',       '2024-03-19', 3,   15.00),
(154, 'Mikael Flores',     '2024-03-20', 1,    4.75),
(155, 'Nalani Washington', '2024-03-20', 2,    8.00),
(156, 'Osiris Rivera',     '2024-03-20', 1,    6.00), 
(157, 'Paloma Kelly',      '2024-03-21', 4,   22.00),
(158, 'Quentin Simmons',   '2024-03-22', 2,    9.00),
(159, 'Rowan Gutierrez',   '2024-03-22', 1,    4.75),
(160, 'Sable Foster',      '2024-03-23', 3,   14.25),
(161, 'Talon Bryant',      '2024-03-23', 2,   11.50),
(162, 'Ulyana Hamilton',   '2024-03-24', 1,    5.25),
(163, 'Viggo Alexander',   '2024-03-24', 2,   10.50),
(164, 'Waverly Russell',   '2024-03-25', 3,   15.75),
(165, 'Xander Griffin',    '2024-03-25', 1,    4.75),
(166, 'Yolanda Diaz',      '2024-03-26', 4,   19.00),
(167, 'Zephyr Hayes',      '2024-03-26', 2,    8.50),
(168, 'Adara Myers',       '2024-03-27', 1,    6.50),
(169, 'Beckett Ford',      '2024-03-27', 3,   16.50),
(170, 'Calliope Graham',   '2024-03-28', 2,    9.00),
(171, 'Dex Sullivan',      '2024-03-28', 1,    4.75),
(172, 'Elara Wallace',     '2024-03-29', 2,    8.00),
(173, 'Fox Woods',         '2024-03-29', 3,   15.00),
(174, 'Gaia Cole',         '2024-03-30', 1,    5.00),
(175, 'Hawk West',         '2024-03-30', 4,   20.00),
(176, 'Iliana Jordan',     '2024-03-31', 2,   10.50),
(177, 'Juno Owens',        '2024-03-31', 1,    4.75),
(178, 'Kael Reynolds',     '2024-04-01', 3,   14.25),
(179, 'Lena Fisher',       '2024-04-01', 2,    9.50),
(180, 'Mace Ellis',        '2024-04-02', 1,    5.25),
(181, 'Nova Harrison',     '2024-04-02', 2,    8.50),
(182, 'Orion Gibson',      '2024-04-03', 1,    4.75),
(183, 'Petra Mcdonald',    '2024-04-03', 4,   21.00),
(184, 'Quillan Cruz',      '2024-04-04', 2,   11.00),
(185, 'Reva Marshall',     '2024-04-04', 1,    6.00),
(186, 'Slate Ortiz',       '2024-04-05', 3,   15.75),
(187, 'Tara Gomez',        '2024-04-05', 2,    9.00),
(188, 'Uriel Murray',      '2024-04-06', 1,    4.75),
(189, 'Vance Freeman',     '2024-04-06', 2,    8.00),
(190, 'Willa Wells',       '2024-04-07', 3,   14.25),
(191, 'Xio Simpson',       '2024-04-07', 1,    5.00),
(192, 'Yael Stevens',      '2024-04-08', 2,   10.00),
(193, 'Zola Tucker',       '2024-04-08', 4,   22.00),
(194, 'Ari Porter',        '2024-04-09', 1,    4.75),
(195, 'Bay Hunter',        '2024-04-09', 3,   16.50),
(196, 'Cove Hicks',        '2024-04-10', 2,    9.50),
(197, 'Dawn Crawford',     '2024-04-10', 1,    5.25),
(198, 'Eve Henry',         '2024-04-11', 2,    8.50),
(199, 'Flint Boyd',        '2024-04-11', 1,    4.75),
(200, 'Maria Santos',      '2024-04-12', 2,   -5.00);  -- negative price (dirty)

SELECT * 
FROM mae_coffeehouse.maecoffeehouse_sales;


ALTER TABLE mae_department
ADD COLUMN manager_id INT,
ADD CONSTRAINT fk_manager
	FOREIGN KEY (manager_id)
	REFERENCES mae_coffeehouse.mae_employee(emp_id);
    
select * from 
mae_coffeehouse.mae_department;

select * from 
mae_coffeehouse.mae_employee;


UPDATE mae_coffeehouse.mae_employee
SET first_name= 'Sety'
WHERE emp_id= 14 ;

UPDATE mae_coffeehouse.mae_employee
SET first_name= 'Andrea'
WHERE emp_id= 1 ;


UPDATE mae_coffeehouse.mae_employee
SET first_name= 'John'
WHERE emp_id= 2 ;


UPDATE mae_coffeehouse.mae_employee
SET first_name= 'Anthonia'
WHERE emp_id= 3 ;


UPDATE mae_coffeehouse.mae_employee
SET first_name= 'Hintea'
WHERE emp_id= 4 ;


UPDATE mae_coffeehouse.mae_employee
SET first_name= 'Reese'
WHERE emp_id= 5;


UPDATE mae_coffeehouse.mae_employee
SET first_name= 'Cecilia'
WHERE emp_id= 6 ;

UPDATE mae_coffeehouse.mae_employee
SET first_name= 'Sety'
WHERE emp_id= 14 ;


UPDATE mae_coffeehouse.mae_employee
SET first_name = CASE
	WHEN emp_id = 4 THEN 'tOLA'
    WHEN emp_id = 6 THEN 'TIMOTHY'
	ELSE  first_name
end 
where emp_id BETWEEN 4 AND  6;



UPDATE mae_coffeehouse.mae_employee
SET first_name = CASE
    WHEN emp_id = 7  THEN 'Chidi'     
    WHEN emp_id = 8  THEN 'Sofia'      
    WHEN emp_id = 9  THEN 'Arjun'      
    WHEN emp_id = 10 THEN 'Linda'      
    WHEN emp_id = 11 THEN 'Julien'     
    WHEN emp_id = 12 THEN 'Mei'        
    WHEN emp_id = 13 THEN 'Emeka'      
    WHEN emp_id = 15 THEN 'Diana'     
    WHEN emp_id = 16 THEN 'Marcus'     
    WHEN emp_id = 17 THEN 'Grace'      
    WHEN emp_id = 18 THEN 'Tunde'      -- Male, Adeyemi
    WHEN emp_id = 19 THEN 'Isabella'   -- female, Rivera
    WHEN emp_id = 20 THEN 'Jordan'     -- gender NULL, Murphy
    ELSE first_name
END
WHERE emp_id BETWEEN 7 AND 20;


ALTER TABLE mae_coffeehouse.mae_employee
DROP COLUMN age; 
SELECT * FROM mae_coffeehouse.mae_employee;

UPDATE mae_coffeehouse.mae_employee
SET gender = CASE

WHEN emp_id= 2 THEN "Male"
WHEN emp_id = 4 THEN "Male"
WHEN emp_id = 5 THEN "Male"
WHEN emp_id = 7 THEN "Male"
WHEN emp_id = 13 THEN "Male"
WHEN emp_id = 16 THEN "Male"
WHEN emp_id = 20 THEN "Male"
else gender
end 
where emp_id between 2 and 20 ;

UPDATE mae_coffeehouse.mae_employee
SET occupation_role = CASE
WHEN emp_id= 10 THEN "Store Manager"
WHEN emp_id = 11 THEN "Store Manager"
ELSE occupation_role 
END
WHERE emp_id BETWEEN 10 AND 11;

update mae_coffeehouse.mae_employee
set birth_date = '1991-04-05'
where emp_id = 20 ;

--  joins, inner, outer and self join

UPDATE mae_coffeehouse.mae_employee
SET occupation_role = 'Cashier'
where emp_id = 19 ;

select * from mae_coffeehouse.mae_department;


-- update dept id --

ALTER table mae_coffeehouse.mae_department
DROP COLUMN depat_manager;

ALTER TABLE mae_coffeehouse.mae_employee
ADD COLUMN dept_id INT; 


UPDATE mae_coffeehouse.mae_employee
SET dept_id = CASE 
WHEN emp_id = 1 THEN 2
WHEN emp_id = 3 THEN 2
WHEN emp_id = 6 THEN 2
WHEN emp_id = 7 THEN 2
WHEN emp_id = 12 THEN 2
WHEN emp_id = 14 THEN 2
WHEN emp_id = 15 THEN 2
WHEN emp_id = 17 THEN 2
WHEN emp_id = 20 THEN 2
else dept_id
end
where emp_id between 1 and 20;
UPDATE `mae_coffeehouse`.`mae_employee` SET `occupation_role` = 'Shift manager', `dept_id` = '1' WHERE (`emp_id` = '2');
UPDATE `mae_coffeehouse`.`mae_employee` SET `occupation_role` = 'Cashier', `dept_id` = '3' WHERE (`emp_id` = '4');
UPDATE `mae_coffeehouse`.`mae_employee` SET `dept_id` = '3' WHERE (`emp_id` = '5');
UPDATE `mae_coffeehouse`.`mae_employee` SET `dept_id` = '3' WHERE (`emp_id` = '8');
UPDATE `mae_coffeehouse`.`mae_employee` SET `dept_id` = '3' WHERE (`emp_id` = '9');
UPDATE `mae_coffeehouse`.`mae_employee` SET `dept_id` = '3' WHERE (`emp_id` = '10');
UPDATE `mae_coffeehouse`.`mae_employee` SET `dept_id` = '3' WHERE (`emp_id` = '11');
UPDATE `mae_coffeehouse`.`mae_employee` SET `dept_id` = '1' WHERE (`emp_id` = '13');
UPDATE `mae_coffeehouse`.`mae_employee` SET `dept_id` = '3' WHERE (`emp_id` = '16');
UPDATE `mae_coffeehouse`.`mae_employee` SET `dept_id` = '3' WHERE (`emp_id` = '18');
UPDATE `mae_coffeehouse`.`mae_employee` SET `dept_id` = '3' WHERE (`emp_id` = '19');


ALTER table mae_coffeehouse.mae_employee
modify first_name varchar(50) NOT NULL ; 
