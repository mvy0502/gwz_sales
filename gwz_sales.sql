TRUNCATE TABLE sales;

INSERT INTO sales (order_date, amount) VALUES
('2024-01-01 10:00:00', 100.00),
('2024-01-01 15:30:00', 150.50),
('2024-01-02 11:20:00', 200.75),
('2024-01-02 16:45:00', 50.25),
('2024-01-03 09:10:00', 300.00);

SELECT * FROM sales;

SELECT 
    DATE(order_date) AS sale_date,
    SUM(amount) AS daily_revenue
FROM sales
GROUP BY DATE(order_date)
ORDER BY sale_date;

SELECT 
    DATE(order_date) AS sale_date,
    ROUND(SUM(amount), 2) AS daily_revenue
FROM sales
GROUP BY DATE(order_date)
ORDER BY sale_date DESC;

