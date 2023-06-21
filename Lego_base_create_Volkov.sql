DROP DATABASE IF EXISTS lego_base;
CREATE DATABASE lego_base;
USE lego_base;

DROP TABLE IF EXISTS lego_systems;
CREATE TABLE lego_systems (
	lego_system_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	lego_system VARCHAR(50) NOT NULL UNIQUE 
	);

DROP TABLE IF EXISTS colors;
CREATE TABLE colors (
	color_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	color VARCHAR(50) NOT NULL COMMENT 'Main part color', 
	transparency BIT NOT NULL DEFAULT 0,
	printing BIT NOT NULL DEFAULT 0,
	printing_discription VARCHAR(150),
	second_color VARCHAR(50) DEFAULT NULL COMMENT 'Additional part color'
	);
	
DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
	categorie_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	lego_system BIGINT UNSIGNED NOT NULL, 
	categorie VARCHAR(50) NOT NULL,
	
	FOREIGN KEY (lego_system) REFERENCES lego_systems(lego_system_id)
	);

DROP TABLE IF EXISTS connectivities;
CREATE TABLE connectivities (
	connectivitie_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	
	top_studs_amount BIGINT NOT NULL,
	buttom_studs_amount BIGINT NOT NULL DEFAULT 0,
	side_studs_amount BIGINT NOT NULL DEFAULT 0,
	
	top_tubes_amount BIGINT NOT NULL DEFAULT 0,
	buttom_tubes_amount BIGINT NOT NULL,
	side_tubes_amount BIGINT NOT NULL DEFAULT 0,
	
	horizontal_holes BIGINT NOT NULL DEFAULT 0,
	vertical_holes BIGINT NOT NULL DEFAULT 0
	);

DROP TABLE IF EXISTS part_types;
CREATE TABLE part_types (
	part_type_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	part_name VARCHAR(150),
	part_categorie BIGINT UNSIGNED NOT NULL,
	part_color BIGINT UNSIGNED NOT NULL,
	part_connectivitie BIGINT UNSIGNED NOT NULL,
	part_height BIGINT,
	part_plate_height BIGINT,
	part_width BIGINT,
	part_depth BIGINT,
	
	FOREIGN KEY (part_categorie) REFERENCES categories(categorie_id),
	FOREIGN KEY (part_color) REFERENCES colors(color_id),
	FOREIGN KEY (part_connectivitie) REFERENCES connectivities(connectivitie_id)
	);

DROP TABLE IF EXISTS part_images;
CREATE TABLE part_images (
	part_image_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	part_type BIGINT UNSIGNED NOT NULL,
	part_image BLOB,
	
	FOREIGN KEY (part_type) REFERENCES part_types(part_type_id)
	);


DROP TABLE IF EXISTS lego_series;
CREATE TABLE lego_series (
	series_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	lego_theme VARCHAR(150)  NOT NULL,
	lego_series VARCHAR(150)  NOT NULL UNIQUE 
	);
	
DROP TABLE IF EXISTS sets_list;
CREATE TABLE sets_list (
	set_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	set_lego_number BIGINT UNSIGNED NOT NULL UNIQUE,
	set_system BIGINT UNSIGNED NOT NULL,
	set_series BIGINT UNSIGNED NOT NULL,
	set_name VARCHAR(150),
	number_of_minifigures BIGINT UNSIGNED,
	number_of_parts BIGINT UNSIGNED NOT NULL,
	set_price BIGINT UNSIGNED,
	release_year YEAR,
	INDEX set_number (set_lego_number),
	FOREIGN KEY (set_system) REFERENCES lego_systems(lego_system_id), 
	FOREIGN KEY (set_series) REFERENCES lego_series(series_id) 
	);

DROP TABLE IF EXISTS set_images;
CREATE TABLE set_images (
	set_image_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	set_id BIGINT UNSIGNED NOT NULL,
	set_image BLOB,
	
	FOREIGN KEY (set_id) REFERENCES sets_list(set_id)
	);
	
DROP TABLE IF EXISTS sets_inventory;
CREATE TABLE sets_inventory (
	sets_inventory_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	set_number BIGINT UNSIGNED NOT NULL,
	part_type BIGINT UNSIGNED NOT NULL,
	number_of_parts BIGINT UNSIGNED NOT NULL,
	
	
	FOREIGN KEY (set_number) REFERENCES sets_list(set_lego_number),
	FOREIGN KEY (part_type) REFERENCES part_types(part_type_id)
	);



