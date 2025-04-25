/*CREATE DATABASE ecommercedb;*/
USE ecommercedb;

CREATE TABLE product_category (
    category_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT
);

CREATE TABLE brand (
    brand_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT
);

CREATE TABLE Color (
    color_id INT PRIMARY KEY,
    name VARCHAR(50),
    hex_value VARCHAR(7)
);

CREATE TABLE size_category (
    size_category_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT
);

CREATE TABLE size_option (
    size_id INT PRIMARY KEY,
    label VARCHAR(50),
    size_category_id INT,
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    base_price DECIMAL(10,2),
    brand_id INT,
    category_id INT,
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

CREATE TABLE product_variation (
    variation_id INT PRIMARY KEY,
    product_id INT,
    color_id INT,
    size_id INT,
    FOREIGN KEY (product_id) REFERENCES Product(product_id),
    FOREIGN KEY (color_id) REFERENCES Color(color_id),
    FOREIGN KEY (size_id) REFERENCES size_option(size_id)
);

CREATE TABLE PRODUCT_IMAGE (
    image_id INT PRIMARY KEY,
    product_id INT,
    image_url VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE product_item (
    item_id INT PRIMARY KEY,
    product_id INT,
    size_id INT,
    price DECIMAL(10,2),
    color_id INT,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES Product(product_id),
    FOREIGN KEY (size_id) REFERENCES size_option(size_id),
    FOREIGN KEY (color_id) REFERENCES Color(color_id)
);

CREATE TABLE attribute_category (
    attribute_category_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE attribute_type (
    attribute_type_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE product_attribute (
    attribute_id INT PRIMARY KEY,
    product_id INT,
    attribute_category_id INT,
    attribute_type_id INT,
    name VARCHAR(100),
    value VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES Product(product_id),
    FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(attribute_category_id),
    FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(attribute_type_id)
);


INSERT INTO product_category VALUES (1, 'Shoes', 'Various types of shoes');
INSERT INTO product_category VALUES (2, 'T-Shirts', 'Various types of T-Shirts');
INSERT INTO product_category VALUES (3, 'Accessories', 'Fashion accessories');

INSERT INTO brand VALUES (1, 'Nike', 'Just Do It');
INSERT INTO brand VALUES (2, 'Adidas', 'Impossible is Nothing');
INSERT INTO brand VALUES (3, 'Puma', 'Forever Faster');

INSERT INTO Color VALUES (1, 'Red', '#FF0000');
INSERT INTO Color VALUES (2, 'Blue', '#0000FF');
INSERT INTO Color VALUES (3, 'Black', '#000000');
INSERT INTO Color VALUES (4, 'White', '#FFFFFF');

INSERT INTO size_category VALUES (1, 'US Shoe Sizes', 'US based shoe sizing');
INSERT INTO size_category VALUES (2, 'T-Shirt Sizes', 'Common T-Shirt sizes');

INSERT INTO size_option VALUES (1, '10', 1);
INSERT INTO size_option VALUES (2, '9', 1);
INSERT INTO size_option VALUES (3, 'M', 2);
INSERT INTO size_option VALUES (4, 'L', 2);

INSERT INTO Product VALUES (1, 'Air Max', 'Popular Nike Air Max', 120.00, 1, 1);
INSERT INTO Product VALUES (2, 'Ultraboost', 'Adidas running shoes', 180.00, 2, 1);
INSERT INTO Product VALUES (3, 'Puma Tee', 'Comfortable Puma T-shirt', 35.00, 3, 2);

INSERT INTO product_variation VALUES (1, 1, 1, 1);
INSERT INTO product_variation VALUES (2, 2, 2, 2);
INSERT INTO product_variation VALUES (3, 3, 3, 3);

INSERT INTO PRODUCT_IMAGE VALUES (1, 1, 'https://airmax.com/airmax_red.jpg');
INSERT INTO PRODUCT_IMAGE VALUES (2, 2, 'https://ultraboost.com/ultraboost_blue.jpg');
INSERT INTO PRODUCT_IMAGE VALUES (3, 3, 'https://pumatee.com/pumatee_black.jpg');

INSERT INTO product_item VALUES (1, 1, 1, 125.00, 1, 50);
INSERT INTO product_item VALUES (2, 2, 2, 185.00, 2, 30);
INSERT INTO product_item VALUES (3, 3, 3, 40.00, 3, 100);

INSERT INTO attribute_category VALUES (1, 'Material');
INSERT INTO attribute_category VALUES (2, 'Fit');

INSERT INTO attribute_type VALUES (1, 'Fabric');
INSERT INTO attribute_type VALUES (2, 'Size Fit');

INSERT INTO product_attribute VALUES (1, 1, 1, 1, 'Upper Material', 'Mesh');
INSERT INTO product_attribute VALUES (2, 2, 1, 1, 'Upper Material', 'Primeknit');
INSERT INTO product_attribute VALUES (3, 3, 2, 2, 'Fit Type', 'Slim Fit');


SELECT * FROM brand;
SHOW TABLES;
SELECT * FROM product_attribute;