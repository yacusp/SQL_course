USE lego_base;


-- вывод информации по детале
SELECT pt.part_name AS 'name', c.color AS 'main color', cat.categorie, pi2.part_image AS 'iamge' 
	FROM part_types pt
		JOIN colors c ON pt.part_color  = c.color_id
		JOIN categories cat ON pt.part_categorie = cat.categorie_id  
		JOIN part_images pi2 ON pt.part_type_id = pi2.part_image_id
	WHERE pt.part_type_id = 2 LIMIT 1
;

-- вывод списка требуемых деталей по номеру набора
SELECT pt.part_name AS 'part', c.color, si.number_of_parts AS 'Qty.', pi.part_image AS 'iamge' 
	FROM sets_inventory si 
		JOIN part_types pt ON si.part_type  = pt.part_type_id 
		JOIN colors c ON pt.part_color  = c.color_id
		JOIN part_images pi ON pt.part_type_id = pi.part_image_id
	WHERE si.set_number = 6602
;

-- вывод в каких наборах встречается деталь
SELECT sl.set_lego_number AS 'Set number', sl.set_name 
	FROM sets_list sl 
		JOIN sets_inventory si ON sl.set_lego_number = si.set_number 
		JOIN part_types pt ON si.part_type = pt.part_type_id 
-- 	WHERE pt.part_type_id = 15
	WHERE pt.part_name = 'White Brick 1x2'
;
/*
		SELECT pt.part_name AS 'part', c.color, SUM(si.number_of_parts) AS 'Total Qty.' 
			FROM sets_inventory si 
		JOIN part_types pt ON si.part_type  = pt.part_type_id 
		JOIN colors c ON pt.part_color  = c.color_id;
*/
	
-- процедура подсчета общего количество деталей каждого типа во всех наборах

DROP PROCEDURE IF EXISTS count_all_parts;

delimiter //
CREATE PROCEDURE count_all_parts()
	BEGIN
		SELECT pt.part_name AS 'Part', c.color, SUM(si.number_of_parts) AS 'Total Qty.' 
			FROM part_types pt 
				JOIN colors c ON pt.part_color  = c.color_id
				JOIN sets_inventory si ON pt.part_type_id = si.part_type
			GROUP BY pt.part_type_id
			ORDER BY SUM(si.number_of_parts) desc
		; 
	END//
delimiter ;

CALL count_all_parts();