SELECT * FROM `order`;
SELECT * FROM `product`;
SELECT * FROM `supplier_pricing`;

#  ===============================

SELECT prod.pro_id AS product_id,prod.pro_name AS product_name FROM `order` AS ord
INNER JOIN `supplier_pricing` AS sp
ON sp.pricing_id = ord.pricing_id
INNER JOIN `product` AS prod
ON prod.pro_id = sp.pro_id WHERE ord.ord_date >"2021-10-05";
