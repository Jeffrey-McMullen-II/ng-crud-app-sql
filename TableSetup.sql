DROP DATABASE IF EXISTS crud;
CREATE DATABASE crud;

-- BEGIN Setup crud.util_log_types
CREATE TABLE crud.util_log_types (
    log_type_id INT NOT NULL AUTO_INCREMENT,
    log_type_description VARCHAR(255) NOT NULL,
	PRIMARY KEY (log_type_id)
);

INSERT INTO crud.util_log_types (log_type_description)
VALUES
('DEBUG'),
('INFO'),
('ERROR');
-- END Setup crud.util_log_types



-- BEGIN Setup crud.logs
CREATE TABLE crud.logs (
    log_id INT NOT NULL AUTO_INCREMENT,
    log_type_id INT NOT NULL,
    log_message TEXT NOT NULL,
	log_date DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY (log_id),
    FOREIGN KEY (log_type_id) REFERENCES crud.util_log_types(log_type_id)
);
-- END Setup crud.logs



-- BEGIN Setup crud.users
CREATE TABLE crud.users (
    user_id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(50),
    first_name VARCHAR(25),
	last_name VARCHAR(25),
    PRIMARY KEY (user_id)
);
-- END Setup crud.users



-- BEGIN Setup crud.files
CREATE TABLE crud.files (
    file_id INT NOT NULL AUTO_INCREMENT,
    file_name VARCHAR(50),
    file_type VARCHAR(50),
	file_contents LONGBLOB,
    PRIMARY KEY (file_id)
);
-- END Setup crud.files



-- BEGIN Setup crud.util_image_types
CREATE TABLE crud.util_image_types (
    image_type_id INT NOT NULL AUTO_INCREMENT,
    image_type VARCHAR(50),
    PRIMARY KEY (image_type_id)
);

INSERT INTO crud.util_image_types (image_type)
VALUES
('image/gif'),
('image/jpeg'),
('image/png');
-- END Setup crud.util_image_types