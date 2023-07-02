CREATE TABLE IF NOT EXISTS tutorials (
    id SERIAL PRIMARY KEY,
    title VARCHAR(128) NOT NULL,
    description VARCHAR(256),
    level INT NOT NULL,
    published BOOLEAN
);

INSERT INTO tutorials (title, description, level, published) VALUES
('Title 1', 'Description 1', 1, true),
('Title 2', 'Description 2', 2, false),
('Title 3', 'Description 3', 3, true),
('Title 4', 'Description 4', 4, false),
('Title 5', 'Description 5', 5, true);
