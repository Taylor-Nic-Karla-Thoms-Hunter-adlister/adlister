CREATE DATABASE sabe_db;

USE sabe_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;


CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    initial_price FLOAT NOT NULL,
    brand varchar (50) NOT NULL,
    bike_type varchar (30),
    speed int UNSIGNED,
    size varchar (30),
    image varchar (255),
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON DELETE CASCADE
);

CREATE TABLE bikes_sold_table (
    id int unsigned AUTO_INCREMENT NOT NULL,
    user_id int UNSIGNED NOT NULL,
    ad_id int UNSIGNED NOT NULL,
    sold BOOLEAN NOT NULL,
    price_sold FLOAT,
    initial_price FLOAT NOT NULL,
    primary key (id),
    foreign key (user_id) REFERENCES users(id),
    foreign key (ad_id) REFERENCES ads(id)
    ON DELETE CASCADE
);

