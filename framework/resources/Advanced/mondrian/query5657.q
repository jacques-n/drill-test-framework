select time_by_day.the_year as c0, product.product_name as c1, promotion.promotion_name as c2, customer.state_province as c3, customer.city as c4, sum(sales_fact_1997.unit_sales) as m0 from time_by_day as time_by_day, sales_fact_1997 as sales_fact_1997, product as product, promotion as promotion, customer as customer where sales_fact_1997.time_id = time_by_day.time_id and time_by_day.the_year = 1997 and sales_fact_1997.product_id = product.product_id and product.product_name = 'Good Light Beer' and sales_fact_1997.promotion_id = promotion.promotion_id and promotion.promotion_name in ('Cash Register Lottery', 'No Promotion', 'Saving Days') and sales_fact_1997.customer_id = customer.customer_id and customer.state_province = 'OR' and customer.city in ('Albany', 'Corvallis', 'Lake Oswego', 'Lebanon', 'Portland', 'Woodburn') group by time_by_day.the_year, product.product_name, promotion.promotion_name, customer.state_province, customer.city;