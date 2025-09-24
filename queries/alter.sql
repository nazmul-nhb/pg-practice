ALTER TABLE hello_world
ADD COLUMN email VARCHAR(32) DEFAULT 'email@hello_world.com' NOT NULL;

ALTER TABLE hello_world alter COLUMN email drop NOT NULL;

ALTER TABLE hello_world alter COLUMN email type VARCHAR(64);

SELECT * from hello_world