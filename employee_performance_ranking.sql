-- Script: Rank employees by sales performance with percentile rankings
SELECT 
    employee_id,
    employee_name,
    department,
    SUM(sales_amount) as total_sales,
    COUNT(sale_id) as total_transactions,
    AVG(sales_amount) as avg_sale_value,
    RANK() OVER (ORDER BY SUM(sales_amount) DESC) as sales_rank,
    PERCENT_RANK() OVER (ORDER BY SUM(sales_amount) DESC) as percentile_rank,
    CASE 
        WHEN PERCENT_RANK() OVER (ORDER BY SUM(sales_amount) DESC) <= 0.1 THEN 'Top 10%'
        WHEN PERCENT_RANK() OVER (ORDER BY SUM(sales_amount) DESC) <= 0.25 THEN 'Top 25%'
        WHEN PERCENT_RANK() OVER (ORDER BY SUM(sales_amount) DESC) <= 0.5 THEN 'Above Average'
        ELSE 'Below Average'
    END as performance_tier
FROM sales s
JOIN employees e ON s.employee_id = e.employee_id
GROUP BY employee_id, employee_name, department
ORDER BY total_sales DESC;