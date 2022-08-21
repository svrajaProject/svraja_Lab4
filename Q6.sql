SELECT * FROM `product`;
SELECT * FROM `supplier_pricing`;
SELECT * FROM `category`;
#  ==============================

select ca.cat_id,prod.pro_id,sp.sup_price from 

category AS ca
INNER JOIN `product` AS prod
ON ca.cat_id = prod.cat_id
INNER JOIN `supplier_pricing` AS sp
-- ON sp.pro_id = prod.pro_id;
ON sp.pro_id = prod.pro_id order by sp.sup_price;


