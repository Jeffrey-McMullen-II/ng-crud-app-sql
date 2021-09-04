-- BEGIN Setup logs
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
    log_id INT NOT NULL AUTO_INCREMENT,
    log_type_id INT NOT NULL,
    log_message TEXT NOT NULL,
	log_date DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY (log_id),
    FOREIGN KEY (log_type_id) REFERENCES util_log_types(log_type_id)
);
-- END Setup logs



-- BEGIN Setup util_log_types
DROP TABLE IF EXISTS util_log_types;
CREATE TABLE util_log_types (
    log_type_id INT NOT NULL AUTO_INCREMENT,
    log_type_description VARCHAR(255) NOT NULL,
	PRIMARY KEY (log_type_id)
);

INSERT INTO util_log_types (log_type_description)
VALUES
('DEBUG'),
('INFO'),
('ERROR');
-- END Setup util_log_types



-- BEGIN Setup users
DROP TABLE IF EXISTS users;
CREATE TABLE users (
    user_id INT NOT NULL AUTO_INCREMENT,
    user_email VARCHAR(50),
    user_first_name VARCHAR(25),
	user_last_name VARCHAR(25),
    PRIMARY KEY (user_id)
);
-- END Setup users



-- BEGIN Setup files
DROP TABLE IF EXISTS files;
CREATE TABLE files (
    file_id INT NOT NULL AUTO_INCREMENT,
    file_name VARCHAR(50),
    file_type VARCHAR(50),
	file_contents LONGBLOB,
    PRIMARY KEY (file_id)
);
-- END Setup files



-- BEGIN Setup util_image_types
DROP TABLE IF EXISTS util_image_types;
CREATE TABLE util_image_types (
    image_type_id INT NOT NULL AUTO_INCREMENT,
    image_type VARCHAR(50),
    PRIMARY KEY (image_type_id)
);

INSERT INTO util_image_types (image_type)
VALUES
('image/gif'),
('image/jpeg'),
('image/png');
-- END Setup util_image_types