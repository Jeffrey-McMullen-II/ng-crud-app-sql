# BEGIN Setup crud_database.util_log_types
DROP TABLE IF EXISTS crud_database.util_log_types;

CREATE TABLE crud_database.util_log_types (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

INSERT INTO crud_database.util_log_types (description)
VALUES
('INFO'),
('ERROR');
# END Setup crud_database.util_log_types
