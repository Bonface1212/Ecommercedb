
# 🛍️ E-Commerce Database (MySQL Schema)

This project provides a fully structured MySQL database schema for an e-commerce platform. It includes all the necessary tables to manage products, brands, categories, variations, sizes, attributes, and inventory, along with sample data inserts.



## 📚 Database Name
  ecommercedb


## 🧱 Schema Overview

### ✅ Core Tables
- **`product_category`** – Stores types of products (e.g., Shoes, T-Shirts).
- **`brand`** – Contains brand information like Nike, Adidas, Puma.
- **`Color`** – Defines color options with human-friendly names and HEX values.
- **`size_category`** – Groups different sizing systems (e.g., US Shoe Sizes).
- **`size_option`** – Stores specific size labels under each size category.
- **`Product`** – Main table for all products listed.
- **`product_variation`** – Connects products to specific size and color combos.
- **`PRODUCT_IMAGE`** – Holds image URLs for each product.
- **`product_item`** – Inventory tracking table with price and stock.
- **`attribute_category`** – Types of product attributes (e.g., Material).
- **`attribute_type`** – Specific attribute types like Fabric or Fit.
- **`product_attribute`** – Assigns attributes to individual products.

---

## 📦 Sample Data Included

Sample inserts are provided for:
- Product categories
- Brands (Nike, Adidas, Puma)
- Colors (Red, Blue, Black, White)
- Size categories & options
- Products (Air Max, Ultraboost, Puma Tee)
- Variations & images
- Inventory items
- Product attributes (like Material and Fit)

---

## 🚀 Getting Started

### 1. Create the Database
```sql
CREATE DATABASE ecommercedb;
USE ecommercedb;
```

### 2. Run Schema Script
Import the `ecommercedb_schema.sql` file into your MySQL server to create all tables and insert data.

You can use tools like:
- MySQL Workbench
- phpMyAdmin
- CLI with:  
```bash
mysql -u your_username -p ecommercedb < ecommercedb_schema.sql
```

---

## 🔍 Sample Queries

### Show All Brands:
```sql
SELECT * FROM brand;
```

### Show All Tables:
```sql
SHOW TABLES;
```

### Get Product Attributes:
```sql
SELECT * FROM product_attribute;
```

### Show All Products with Brand:
```sql
SELECT p.name AS product, b.name AS brand 
FROM Product p
JOIN brand b ON p.brand_id = b.brand_id;
```

---

## 🧰 Technologies Used

- **Database**: MySQL 5.7+
- **Language**: SQL
- **Schema Design**: Relational, Normalized (3NF)

---

## 📁 Repository Structure

```
ecommercedb/
├── ecommercedb_schema.sql     # Full database schema & sample data
└── README.md                  # Project documentation
```

---

## 📤 Optional: Exporting the Database

To create a `.sql` dump from your local MySQL server:
```bash
mysqldump -u root -p ecommercedb > ecommercedb.sql
```

---

## 👨‍💻 Author

**Bonface Mamboleo**  
Web Developer | Software Engineer | Photographer | Videographer

---

## 📄 License

This project is open-source and free to use for educational or commercial purposes.

---

## 🌐 Contributions

Contributions are welcome! Please fork the repo and submit a pull request for improvements or additions.
