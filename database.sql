CREATE DATABASE farmdirect;

USE farmdirect;

CREATE TABLE farmers (
    farmer_id INT AUTO_INCREMENT PRIMARY KEY,
    farmer_name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    phone VARCHAR(15)
);

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    farmer_id INT,
    product_name VARCHAR(100),
    quantity DECIMAL(10,2),
    price_per_kg DECIMAL(10,2),
    FOREIGN KEY (farmer_id) REFERENCES farmers(farmer_id)
);

CREATE TABLE consumers (
    consumer_id INT AUTO_INCREMENT PRIMARY KEY,
    consumer_name VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(255)
);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    consumer_id INT,
    product_id INT,
    quantity DECIMAL(10,2),
    total_price DECIMAL(10,2),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (consumer_id) REFERENCES consumers(consumer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO farmers
(farmer_name, location, phone)
VALUES
('Ramesh Kumar', 'Cuttack', '9876543210'),
('Suresh Das', 'Bhubaneswar', '9876543211');

INSERT INTO products
(farmer_id, product_name, quantity, price_per_kg)
VALUES
(1, 'Tomato', 100, 25),
(1, 'Potato', 150, 20),
(2, 'Rice', 200, 45);

SELECT * FROM farmers;

SELECT * FROM products;

SELECT
    farmers.farmer_name,
    farmers.location,
    products.product_name,
    products.price_per_kg
FROM farmers
JOIN products
ON farmers.farmer_id = products.farmer_id;