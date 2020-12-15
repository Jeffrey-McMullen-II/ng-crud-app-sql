DROP TABLE IF EXISTS crud_database.logs;
DROP TABLE IF EXISTS crud_database.util_log_types;
DROP TABLE IF EXISTS crud_database.users;
DROP TABLE IF EXISTS crud_database.files;



-- BEGIN Setup crud_database.util_log_types
CREATE TABLE crud_database.util_log_types (
    log_type_id INT NOT NULL AUTO_INCREMENT,
    log_type_description VARCHAR(255) NOT NULL,
	PRIMARY KEY (log_type_id)
);

INSERT INTO crud_database.util_log_types (log_type_description)
VALUES
('DEBUG'),
('INFO'),
('ERROR');
-- END Setup crud_database.util_log_types



-- BEGIN Setup crud_database.logs
CREATE TABLE crud_database.logs (
    log_id INT NOT NULL AUTO_INCREMENT,
    log_type_id INT NOT NULL,
    log_message TEXT NOT NULL,
	log_date DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY (log_id),
    FOREIGN KEY (log_type_id) REFERENCES crud_database.util_log_types(log_type_id)
);
-- END Setup crud_database.logs



-- BEGIN Setup crud_database.users
CREATE TABLE crud_database.users (
    user_id INT NOT NULL AUTO_INCREMENT,
    user_email VARCHAR(50),
    user_first_name VARCHAR(25),
	user_last_name VARCHAR(25),
    PRIMARY KEY (user_id)
);
-- END Setup crud_database.users



-- BEGIN Setup crud_database.files
CREATE TABLE crud_database.files (
    file_id INT NOT NULL AUTO_INCREMENT,
    file_name VARCHAR(50),
    file_type VARCHAR(50),
	file_contents LONGBLOB,
    PRIMARY KEY (file_id)
);
-- END Setup crud_database.files
