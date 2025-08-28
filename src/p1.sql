CREATE TABLE employees (
    id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(100) NOT NULL,
    department VARCHAR(100),
    salary DECIMAL(10, 2),
    PRIMARY KEY (id)
);

CREATE TABLE sales (
    order_id INT NOT NULL,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES inventories(product_id)
);

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(100) PRIMARY KEY (customer_id)
);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT,
    order_date DATE,
    customer_id INT,
    total_amount DECIMAL(10, 2) PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE inventories (
    product_id INT AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    quantity INT,
    price DECIMAL(10, 2),
    PRIMARY KEY (product_id)
);

INSERT INTO
    employees (name, position, department, salary)
VALUES
    ('Alice', 'Manager', 'Sales', 3000.00);

INSERT INTO
    sales (order_id, customer_id, product_id, quantity, sale_date)
VALUES
    (1, 1, 1, 2, '2025-08-28');

INSERT INTO
    customers (customer_name, city)
VALUES
    ('Ali', 'Kuala Lumpur');

INSERT INTO
    orders (order_date, customer_id, total_amount)
VALUES
    ('2025-08-28', 1, 3700.00);

INSERT INTO
    inventories (product_name, quantity, price)
VALUES
    ('Laptop', 15, 3500.00);