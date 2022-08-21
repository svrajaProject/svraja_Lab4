SELECT * FROM `supplier`;
SELECT * FROM `supplier_pricing`;
SELECT * FROM `product`;
SELECT * FROM `category`;
# ========================

SELECT sp.sup_id FROM `supplier_pricing` AS sp group by sp.sup_id having count(sp.sup_id)>1;

#  =======================
SELECT sup.sup_id,sup.sup_name,sup.sup_city FROM supplier AS sup

INNER JOIN 
(
SELECT sp.sup_id FROM `supplier_pricing` AS sp group by sp.sup_id having count(sp.sup_id)>1
) AS sp

ON sp.sup_id = sup.sup_id;