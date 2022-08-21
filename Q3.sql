-- Q1
# ===========================
SELECT * FROM `customer` AS cus
inner join `order` AS ord 
ON ord.cus_id = cus.cus_id;
use eCommerce;
#  ================================================
SELECT `order`.*,`customer`.cus_name,`customer`.cus_gender FROM `order`
inner join `customer`
WHERE `customer`.cus_id = `order`.cus_id
HAVING `order`.ord_amount >=3000;
# ================================================
SELECT t1.cus_id,t1.cus_name,t1.cus_gender from 
(
	SELECT `order`.*,`customer`.cus_name,`customer`.cus_gender FROM `order`
	inner join `customer`
	WHERE `customer`.cus_id = `order`.cus_id
	HAVING `order`.ord_amount >=3000
) AS t1 GROUP BY t1.cus_id;

#  =================================================================

SELECT count(t2.cus_gender) AS No_of_customers,t2.cus_gender AS customer_gender from 
(
	SELECT t1.cus_id,t1.cus_name,t1.cus_gender from 
	(
		SELECT `order`.*,`customer`.cus_name,`customer`.cus_gender FROM `order`
		inner join `customer`
		WHERE `customer`.cus_id = `order`.cus_id
		HAVING `order`.ord_amount >=3000
	) AS t1 GROUP BY t1.cus_id
    
) AS t2 GROUP BY t2.cus_gender;