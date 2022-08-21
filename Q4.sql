SELECT * FROM `customer`;
SELECT * FROM `product`;
SELECT * FROM `supplier_pricing`;
SELECT * FROM `order`;

#  ===========================

SELECT ord.*,cus.cus_name,prod.pro_name FROM `order` AS ord
INNER JOIN `customer` AS cus 
ON ord.cus_id = cus.cus_id
INNER JOIN `supplier_pricing` AS sp
ON ord.pricing_id = sp.pricing_id

INNER JOIN `product` AS prod
ON prod.pro_id = sp.pro_id
where ord.cus_id = 2 order by cus.cus_id ;


