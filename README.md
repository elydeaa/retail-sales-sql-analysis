# Retail Sales Performance Analysis using SQL

![SQL](https://img.shields.io/badge/Language-SQL-blue)
![Focus](https://img.shields.io/badge/Focus-Data%20Analytics-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

## 📌 Project Overview
This project demonstrates foundational SQL skills applied to a retail transaction dataset (`transaksi`). Acting as a **Junior Data Analyst**, the objective of this analysis is to evaluate company sales performance, identify best-selling and highest-grossing products, and uncover monthly revenue trends to support data-driven business decisions.

This portfolio project was completed as part of the **MySkill Short Class: SQL Introduction for Data Analysis**.

---

## 🛠️ Core SQL Concepts Applied
* **Relational Database & Data Types:** Working with structured tabular data (`VARCHAR`, `INT`, `FLOAT`, `DATE`, `TIMESTAMP`).
* **Data Retrieval & Aggregation:** `SELECT`, `FROM`, `SUM()`, `GROUP BY`, `ORDER BY`, and `LIMIT`.
* **Time-Series Grouping:** Monthly revenue aggregation using `DATE_TRUNC()`.

---

## 🗂️ Dataset Schema (`transaksi` Table)
The analysis uses a retail sales dataset containing transaction records with the following key fields:

| Column Name | Description |
| :--- | :--- |
| `id_transaksi` | Unique identifier for each transaction |
| `tanggal` | Date of the transaction |
| `nama_pelanggan` | Customer name |
| `kategori_produk` | Product category (e.g., *Elektronik*, *Pakaian*, *Hobi*, *Perabot*) |
| `item_barang` | Name of the purchased product |
| `asal_wilayah` | Customer region (*Barat*, *Pusat*, *Timur*, *Utara*, *Selatan*) |
| `jumlah_barang` | Quantity of items purchased |
| `harga_satuan` | Unit price of the product (IDR) |
| `total_bayar` | Total payment amount per transaction (IDR) |
| `metode_pembayaran` | Payment method (*Transfer*, *Tunai*, *Debit*) |

---

## 🔍 Business Questions, Queries & Key Insights

### 1. Which product is the best-selling in terms of quantity?
```sql
SELECT
    item_barang,
    SUM(jumlah_barang) AS total_quantity
FROM transaksi
GROUP BY item_barang
ORDER BY total_quantity DESC
LIMIT 1;
```
* **Key Insight:** **Gantungan Baju** *(Clothes Hangers)* is the highest-volume product, reaching a total of **10 units sold**.

---

### 2. Which product generates the highest total revenue?
```sql
SELECT
    item_barang,
    SUM(total_bayar) AS total_revenue
FROM transaksi
GROUP BY item_barang
ORDER BY total_revenue DESC
LIMIT 1;
```
* **Key Insight:** **Tenda Camping** *(Camping Tent)* is the top revenue generator, contributing **IDR 1,200,000** in total sales.

---

### 3. Which product generates the lowest total revenue?
```sql
SELECT
    item_barang,
    SUM(total_bayar) AS total_revenue
FROM transaksi
GROUP BY item_barang
ORDER BY total_revenue ASC
LIMIT 1;
```
* **Key Insight:** **Keset Kaki** *(Doormat)* recorded the lowest revenue contribution at **IDR 75,000**.

---

### 4. Monthly Revenue Trend (January – May)
```sql
SELECT
    DATE_TRUNC('month', tanggal) AS sales_month,
    SUM(total_bayar) AS monthly_revenue
FROM transaksi
GROUP BY sales_month
ORDER BY sales_month ASC;
```
* **Key Insight:** Revenue remained relatively steady between January and March, followed by a **sharp surge in April** and reaching its **peak in May** (~IDR 38–40 million).

---

## 📄 Presentation & Certification
* **Full Slide Deck:** View the complete visual presentation in [`sql/Presentation Project/Basic_SQL_Portfolio-Powered_by_Ely_Dea_Theresia.pdf`](presentation Project/Basic_SQL_Portfolio-Powered_by_Ely_Dea_Theresia.pdf).
* **Certification:** Awarded by **MySkill** for completing *SQL Introduction for Data Analysis* (July 13, 2026).

---

## 🤝 Let's Connect!
I am open to discussing data analytics projects, entry-level data roles, or collaborations.
* **Author:** Ely Dea Theresia Br Manik
* **LinkedIn:** [Ely Dea Theresia Br Manik](https://www.linkedin.com) 
* **Instagram:** [@deathrsia._](https://www.instagram.com/deathrsia._)
* **Website:** https://portfolioelydeatheresia.netlify.app/
