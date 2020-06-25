-- DELETE FROM users;
-- DELETE FROM properties;
-- DELETE FROM reservations;
-- DELETE FROM reviews;

INSERT INTO users (name, email, password)
VALUES ('Rishav Baral', 'rishav@baral.ca', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Mito Chan', 'mito@chan.ca', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Monkey D. Luffy', 'monkey@D.ca', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code)
VALUES (1, 'Surrey House', 'house in surrey', 'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 450, 5, 2, 4, 'Canada', '8750 140 st', 'Surrey', 'BC', 'V3W5L3'),
(2, 'Mito House', 'house in hunterxhunter', 'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 5000, 10, 2, 7, 'Japan', '123 Anime st', 'Kyoto', 'AB', 'H5L7T7'),
(3, 'Monkey House', 'house in east blue', 'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 200, 2, 2, 0, 'Brazil', '619 Raftel rd', 'New World', 'GL', '3D2Y0I');

INSERT INTO reservations (guest_id, property_id, start_date, end_date) 
VALUES (1, 3, '2018-09-11', '2018-09-26'),
(3, 2, '2019-01-04', '2019-02-01'),
(2, 1, '2021-10-01', '2021-10-14');

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (1, 3, 1, 7, 'Smelt kinda bad but good house to upgrade my power level'),
(3, 2, 2, 1, 'not enough MEAT'),
(2, 1, 3, 5, 'not as good as my house');