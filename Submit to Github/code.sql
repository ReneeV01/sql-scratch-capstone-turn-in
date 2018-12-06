1.
-- Quiz Funnel

SELECT *
FROM survey
LIMIT 10;

2.
-- SQL Query
SELECT question, COUNT(*)
FROM survey
GROUP BY question;

3.
 
Excel sheet
 
 
4.
-- SQL Query

SELECT *
FROM quiz
LIMIT 5;

5.
-- SQL Query

SELECT *
FROM home_try_on  LIMIT 5;

6.
-- SQL Query

SELECT *
FROM purchase
LIMIT 5;

7.
-- SQL Query

SELECT DISTINCT 
 q.user_id, 
 h.user_id IS NOT NULL AS    'is_home_try_on',
 h.number_of_pairs,
 p.user_id IS NOT NULL AS 'is_purchase'
FROM quiz q
LEFT JOIN home_try_on h on q.user_id = h.user_id
LEFT JOIN purchase p on p.user_id = q.user_id
LIMIT 10;

8.
-- SQL Query

WITH funnels AS (SELECT DISTINCT 
 q.user_id, 
 h.user_id is not null as is_home_try_on, 
 h.number_of_pairs, 
 p.user_id is not null as    is_purchase 
FROM quiz q
LEFT JOIN purchase p on q.user_id = p.user_id
LEFT JOIN home_try_on h on h.user_id = q.user_id)                 
SELECT COUNT(is_home_try_on) as num_try_on,
number_of_pairs,
COUNT(
    CASE
      WHEN is_purchase = 1 THEN user_id
      ELSE NULL
    END) as num_purchase
FROM funnels
GROUP BY number_of_pairs;

9.
-- SQL Query

 SELECT product_id, model_name, color, price, COUNT(*) AS 'Purchased'
  FROM purchase
  WHERE style LIKE 'W%'
  GROUP BY product_id
  ORDER BY Purchased desc;

10
-- SQL Query

 SELECT model_name, COUNT(*) AS 'Purchased'
 FROM purchase
 WHERE style LIKE 'W%'
 GROUP BY model_name
 ORDER BY Purchased desc;
 
 SELECT color, COUNT(*) AS 'Purchased'
 FROM purchase
 WHERE style LIKE 'W%'
 GROUP BY color
 ORDER BY Purchased desc;
 
 
 SELECT price, COUNT(*) AS 'Purchased'
 FROM purchase
 WHERE style LIKE 'W%'
 GROUP BY price
 ORDER BY Purchased desc;

11
-- SQL Query

 SELECT product_id, model_name, color, price, COUNT(*) AS 'Purchased'
 FROM purchase
 WHERE style LIKE 'M%'
 GROUP BY product_id
 ORDER BY Purchased desc;

12
-- SQL Query

 SELECT model_name, COUNT(*) AS 'Purchased'
 FROM purchase
 WHERE style LIKE 'M%'
 GROUP BY model_name
 ORDER BY Purchased desc;
 
 SELECT color, COUNT(*) AS 'Purchased'
 FROM purchase
 WHERE style LIKE 'M%'
 GROUP BY color
 ORDER BY Purchased desc;
 
 
 SELECT price, COUNT(*) AS 'Purchased'
 FROM purchase
 WHERE style LIKE 'M%'
 GROUP BY price
 ORDER BY Purchased desc;


13
-- SQL Query

 SELECT style, number_of_pairs, COUNT(*) AS 'Purchased'
  FROM purchase p JOIN home_try_on h
  ON p.user_id = h.user_id 
  GROUP BY style, number_of_pairs
  ORDER BY Purchased desc; 

14
-- SQL Query

  SELECT style, COUNT(*) AS 'Purchased'
  FROM purchase
  GROUP BY style
  ORDER BY Purchased desc; 




 

