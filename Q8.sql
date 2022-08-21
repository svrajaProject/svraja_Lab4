SELECT c.cus_name,c.cus_gender FROM `customer` AS c
WHERE (c.cus_name  LIKE "%A" OR c.cus_name  LIKE "A%");
