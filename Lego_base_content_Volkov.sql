
USE lego_base;

INSERT IGNORE INTO lego_systems (`lego_system_id`, `lego_system`) 
VALUES
(1, 'duplo'),
(2, 'system'), 
(3, 'technic'),
(4, 'electric'),
(5, 'znap'),
(6, 'bionicke')
;

INSERT IGNORE INTO colors  (`color_id`, `color`, `transparency`, `printing`, `second_color`, `printing_discription`) 
VALUES
(1, 'white', 0, 0, NULL, NULL),
(2, 'black', 0, 0, NULL, NULL),
(3, 'red', 0, 0, NULL, NULL),
(4, 'yellow', 0, 0, NULL, NULL),
(5, 'blue', 0, 0, NULL, NULL),
(6, 'green', 0, 0, NULL, NULL),
(7, 'white', 0, 1, NULL, 'Eye'),
(8, 'blue', 1, 0, NULL, NULL), 
(9, 'grey', 0, 0, 'red', NULL),
(10, 'clear', 1, 0, NULL, NULL)
;

INSERT IGNORE INTO categories (`categorie_id`, `lego_system`, `categorie`) 
VALUES
(1, 2, 'bricks'),
(2, 3, 'bricks'),
(3, 2, 'cylinders'), 
(4, 2, 'plates'),
(5, 2, 'glasses'), 
(7, 2, 'tiles'),
(8, 3, 'liftarms'),
(9, 2, 'wheels'),
(10, 2, 'slopes'),
(11, 2, 'vehicles')
;

INSERT IGNORE INTO connectivities (`connectivitie_id`, `top_studs_amount`, `buttom_tubes_amount`)
VALUES
(1, 16, 16),
(2, 2, 4), 
(3, 3, 3),
(4, 8, 8), 
(5, 2, 2), 
(6, 6, 6),
(7, 4, 4),
(8, 6, 6),
(9, 1, 1),
(10, 12, 12)
;

INSERT IGNORE INTO connectivities (`connectivitie_id`, `top_studs_amount`, `side_studs_amount`, `buttom_tubes_amount`)
VALUES (8, 4, 2, 4); 


INSERT IGNORE INTO part_types (`part_type_id`, `part_name`, `part_categorie`, `part_color`, `part_connectivitie`, `part_height`, `part_plate_height`, `part_width`, `part_depth`)
VALUES
(1, 'Gray Plate 2x4 with Red Wheels', 9, 9, 8, 1, 3, 4, 2),
(2, 'Red Plate 2x8', 4, 3, 1, NULL, 1, 8, 2),
(3, 'Trans-Clear Slope 45 2x2', 10, 10, 2, 1, 3, 2, 2),
(4, 'White Brick 2x3', 1, 1, 6, 1, 3, 3, 2),
(5, 'White Plate 2x4', 4, 1, 4, NULL, 1, 4, 2),
(6, 'Yellow Plate 1x2', 4, 4, 5, NULL, 1, 2, 1),
(7, 'Yellow Plate 2x3', 4, 4, 6, NULL, 1, 3, 2),
(8, 'Yellow Plate 2x8', 4, 4, 1, NULL, 1, 8, 2),
(9, 'Yellow Mudguard 2x4', 11, 4, 7, NULL, 2, 4, 2), 
(10, 'Red Plate 1x2', 4, 3, 5, NULL, 1, 2, 1),
(11, 'Red Plate 2x3', 4, 3, 6, NULL, 1, 3, 2),
(12, 'Red Mudguard 2x4', 11, 3, 7, NULL, 2, 4, 2),
(13, 'Trans-Clear Brick 2x2', 1, 10, 4, 1, 3, 2, 2),
(14, 'Trans-Blue Cylinder', 1, 8, 9, 1, 3, 1, 1),
(15, 'White Brick 1x2', 1, 1, 5, 1, 3, 1, 2),
(16, 'White Plate 2x2', 4, 1, 7, NULL, 1, 2, 2),
(17, 'Yellow Plate 2x3', 4, 1, 6, NULL, 1, 3, 2),
(18, 'White Plate 2x8', 4, 1, 1, NULL, 1, 8, 2),
(19, 'Red Plate 2x6', 4, 3, 10, NULL, 1, 6, 2),
(20, 'Red Slope 45 2x2', 10, 3, 2, 1, 3, 2, 2),
(21, 'Trans-Clear Brick 1x2', 1, 10, 5, 1, 3, 1, 2), 
(22, 'Black Brick 1x2', 1, 2, 5, 1, 3, 1, 2),
(23, 'Black Brick 2x2', 1, 2, 7, 1, 3, 2, 2),
(24, 'White Brick 2x2 with Eye', 1, 7, 7, 1, 3, 2, 2),
(25, 'White Brick 2x4', 1, 1, 4, 1, 3, 4, 2)
;

INSERT IGNORE INTO part_images (`part_image_id`, `part_type`, `part_image`)
VALUES
(1, 1, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\1 Gray Plate 2x4 with Red Wheels.png')),
(2, 2, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\2 Red Plate 2x8.png')),
(3, 3, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\3 Trans-Clear Slope 45 2x2.png')),
(4, 4, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\4 White Brick 2x3.png')),
(5, 5, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\5 White Plate 2x4.png')),
(6, 6, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\6 Yellow Plate 1x2.png')),
(7, 7, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\7 Yellow Plate 2x3.png')),
(8, 8, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\8 Yellow Plate 2x8.png')),
(9, 9, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\9 Yellow Mudguard 2x4.png')),
(10, 10, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\10 Red Plate 1x2.png')),
(11, 11, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\11 Red Plate 2x3.png')),
(12, 12, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\12 Red Mudguard 2x4.png')),
(13, 13, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\13 Trans-Clear Brick 2x2.png')),
(14, 14, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\14 Trans-Blue Cylinder.png')),
(15, 15, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\15 White Brick 1x2.png')),
(16, 16, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\16 White Plate 2x2.png')),
(17, 17, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\17 White Plate 2x3.png')),
(18, 18, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\18 White Plate 2x8.png')),
(19, 19, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\19 Red Plate 2x6.png')),
(20, 20, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\20 Red Slope 45 2x2.png')),
(21, 21, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\21 Trans-Clear Brick 1x2.png')),
(22, 22, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\22 Black Brick 1x2.png')),
(23, 23, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\23 Black Brick 2x2.png')),
(24, 24, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\24 White Brick 2x2 with Eye.png')),
(25, 25, LOAD_FILE('E:\Google Drive\SQL\Lego_parts\25 White Brick 2x4.png'))
;

INSERT IGNORE INTO lego_series (`series_id`, `lego_theme`, `lego_series`)
VALUES
(1, 'Town', 'Traffic'),
(2, 'Town', 'Fire'),
(3, 'Town', 'Hospital'), 
(4, 'Creator', 'Basic')
;


INSERT IGNORE INTO sets_list (`set_id`,	`set_lego_number`, `set_system`, `set_series`, `set_name`, `number_of_minifigures`, `number_of_parts`, `set_price`, `release_year`) 
VALUES
(1, 604, 2, 1, 'Shell Service Car', 1, 13, 12, 1978),
(2, 6602, 2, 2,  'Fire Unit', 1, 16, 20, 1981),
(3, 606, 2, 3, 'Ambulance', 1, 17, 15,1978),
(4, 1828, 2, 4, 'Sheep', 0, 7, 5, 1995)
;

INSERT IGNORE INTO set_images (`set_image_id`, set_id , set_image)
VALUES
(1, 1, LOAD_FILE('E:\Google Drive\SQL\Lego_sets\1_604.png')),
(2, 2, LOAD_FILE('E:\Google Drive\SQL\Lego_sets\2_6602.png')),
(3, 3, LOAD_FILE('E:\Google Drive\SQL\Lego_sets\3_606.png')),
(4, 4, LOAD_FILE('E:\Google Drive\SQL\Lego_sets\4_1828.png'))
;

INSERT IGNORE INTO sets_inventory (`sets_inventory_id`,	`set_number`, `part_type`,	`number_of_parts`)
VALUES
(1, 604, 1, 2), 
(2, 604, 2, 1), 
(3, 604, 3, 1), 
(4, 604, 4, 1), 
(5, 604, 5, 1), 
(6, 604, 6, 1), 
(7, 604, 7, 3), 
(8, 604, 8, 1),
(9, 604, 9, 2), 
(10, 6602, 1, 2), 
(11, 6602, 10, 2), 
(12, 6602, 11, 4), 
(13, 6602, 19, 2), 
(14, 6602, 20, 1), 
(15, 6602, 12, 2), 
(16, 6602, 21, 1), 
(17, 6602, 3, 1), 
(18, 6602, 14, 1), 
(19, 606, 1, 2), 
(20, 606, 10, 1), 
(21, 606, 11, 3), 
(22, 606, 2, 1), 
(23, 606, 12, 2), 
(24, 606, 13, 1), 
(25, 606, 3, 1), 
(26, 606, 14, 1), 
(27, 606, 15, 2), 
(28, 606, 16, 1), 
(29, 606, 17, 1), 
(30, 606, 18, 1), 
(31, 1828, 22, 2), 
(32, 1828, 23, 1), 
(33, 1828, 15, 2), 
(34, 1828, 24, 1), 
(35, 1828, 25, 1)
;