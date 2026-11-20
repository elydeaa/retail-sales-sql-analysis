/* ============================================================================
   Project : Retail Sales Performance Analysis
   Author  : Ely Dea Theresia Br Manik
   Course  : MySkill Short Class - SQL Introduction for Data Analysis
   ============================================================================ */

-- 1. Best-Selling Product by Quantity
-- Identifies the product with the highest total units sold.
SELECT
    item_barang,
    SUM(jumlah_barang) AS total_quantity
FROM transaksi
GROUP BY item_barang
ORDER BY total_quantity DESC
LIMIT 1;


-- 2. Highest Revenue-Generating Product
-- Identifies the product contributing the highest total sales revenue.
SELECT
    item_barang,
    SUM(total_bayar) AS total_revenue
FROM transaksi
GROUP BY item_barang
ORDER BY total_revenue DESC
LIMIT 1;


-- 3. Lowest Revenue-Generating Product
-- Identifies the product contributing the lowest total sales revenue.
SELECT
    item_barang,
    SUM(total_bayar) AS total_revenue
FROM transaksi
GROUP BY item_barang
ORDER BY total_revenue ASC
LIMIT 1;


-- 4. Monthly Revenue Trend Analysis
-- Aggregates total revenue per month to observe growth patterns.
SELECT
    DATE_TRUNC('month', tanggal) AS sales_month,
    SUM(total_bayar) AS monthly_revenue
FROM transaksi
GROUP BY sales_month
ORDER BY sales_month ASC;
