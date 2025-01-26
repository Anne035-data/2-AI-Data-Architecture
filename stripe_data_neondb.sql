-- Location data
INSERT INTO location
(location_id, country_name, region, city, location_ip, embargo)
VALUES
('LOC001', 'USA', 'North America', 'New York', '192.168.1.10', FALSE),
('LOC002', 'France', 'Europe', 'Paris', '192.168.1.20', FALSE),
('LOC003', 'Germany', 'Europe', 'Berlin', '192.168.1.30', FALSE),
('LOC004', 'Iran', 'Middle East', 'Tehran', '192.168.1.40', TRUE),
('LOC005', 'United Kingdom', 'Europe', 'London', '192.168.1.50', FALSE),
('LOC006', 'Japan', 'Asia', 'Tokyo', '192.168.1.60', FALSE),
('LOC007', 'Spain', 'Europe', 'Madrid', '192.168.1.70', FALSE);

-- Device data
INSERT INTO device
(device_type_id, device_type, operating_system)
VALUES
('DEV001', 'Smartphone', 'Android'),
('DEV002', 'Tablet', 'iOS'),
('DEV003', 'Laptop', 'Windows'),
('DEV004', 'Desktop', 'MacOS'),
('DEV005', 'Tablet', 'iPadOS'),
('DEV006', 'Smartphone', 'iOS');

-- Payment Method data
INSERT INTO Payment_Method
(payment_method_id, payment_type, provider)
VALUES
('PM001', 'Credit Card', 'VISA'),
('PM002', 'PayPal', 'PayPal Inc.'),
('PM003', 'Bank Transfer', 'BNP Paribas'),
('PM004', 'Digital Wallet', 'Apple Pay'),
('PM005', 'Digital Wallet', 'Google Pay'),
('PM006', 'Credit Card', 'Mastercard');

-- Status data
INSERT INTO Status
(status_id, status_name, description, fraude_score, is_fraud)
VALUES
('STAT001', 'Completed', 'Transaction successfully completed', 0.1, FALSE),
('STAT002', 'Pending', 'Transaction is pending', 0.0, FALSE),
('STAT003', 'Fraudulent', 'Transaction flagged as fraud', 0.9, TRUE),
('STAT004', 'Failed', 'Transaction failed due to technical issues', 0.2, FALSE),
('STAT005', 'Suspicious', 'Transaction under review', 0.7, FALSE),
('STAT006', 'Cancelled', 'Transaction cancelled by user', 0.1, FALSE);

-- Currency data
INSERT INTO Currency 
(currency_id, from_currency, to_currency, rate)
VALUES
('CUR001', 'USD', 'EUR', 0.85),
('CUR002', 'EUR', 'JPY', 129.53),
('CUR003', 'GBP', 'USD', 1.39),
('CUR004', 'JPY', 'USD', 0.0091),
('CUR005', 'CAD', 'USD', 0.75),
('CUR006', 'AUD', 'USD', 0.73),
('CUR007', 'CNY', 'USD', 0.15);

-- Product data
INSERT INTO Product
(product_id, product_name, product_price, category, authorized)
VALUES
('PROD001', 'Smartphone X', 899.99, 'Electronics', TRUE),
('PROD002', 'Designer Handbag', 1299.99, 'Fashion', TRUE),
('PROD003', 'Organic Bananas', 3.99, 'Grocery', TRUE),
('PROD004', 'Premium Headphones', 299.99, 'Electronics', TRUE),
('PROD005', 'Luxury Watch', 2499.99, 'Fashion', TRUE),
('PROD006', 'Coffee Machine', 199.99, 'Home Appliances', TRUE);

-- Customer data
INSERT INTO Customer 
(customer_id, customer_name, customer_email, location_id)
VALUES
('CUST001', 'John Doe', 'johndoe@example.com', 'LOC001'),
('CUST002', 'Jane Smith', 'janesmith@example.com', 'LOC002'),
('CUST003', 'Alice Johnson', 'alicej@example.com', 'LOC003'),
('CUST004', 'Emma Wilson', 'emma.wilson@example.com', 'LOC005'),
('CUST005', 'Takeshi Yamamoto', 'takeshi.y@example.jp', 'LOC006'),
('CUST006', 'Carlos Rodriguez', 'carlos.r@example.es', 'LOC007');

-- Merchant data
INSERT INTO Merchant
(merchant_id, merchant_name, business_type, location_id)
VALUES
('MERCH001', 'Best Electronics', 'Retail', 'LOC001'),
('MERCH002', 'Fashion Hub', 'Fashion', 'LOC003'),
('MERCH003', 'QuickMart', 'Grocery', 'LOC002'),
('MERCH004', 'Tech Haven', 'Electronics', 'LOC005'),
('MERCH005', 'Global Gadgets', 'Electronics', 'LOC006'),
('MERCH006', 'Style Studio', 'Fashion', 'LOC007');

-- Transaction data
INSERT INTO Transaction (
    transaction_id, merchant_id, customer_id, payment_method_id, 
    device_type_id, date_id, status_id, product_id, location_id, 
    currency_id, datetime, amount, tax
) 
VALUES 
('TXN001', 'MERCH001', 'CUST001', 'PM001', 
'DEV001', '20231022', 'STAT001', 'PROD001', 'LOC001', 
'CUR001', '2023-10-22 14:30:00', 120.50, 10.00),

('TXN002', 'MERCH002', 'CUST002', 'PM002', 
'DEV002', '20231023', 'STAT002', 'PROD002', 'LOC002', 
'CUR002', '2023-10-23 16:45:00', 85.75, 7.50),

('TXN003', 'MERCH003', 'CUST003', 'PM003', 
'DEV003', '20231024', 'STAT003', 'PROD003', 'LOC003', 
'CUR003', '2023-10-24 11:00:00', 150.00, 12.50),

('TXN004', 'MERCH004', 'CUST004', 'PM004', 
'DEV004', '20231025', 'STAT004', 'PROD004', 'LOC005', 
'CUR003', '2023-10-25 09:15:00', 299.99, 25.00),

('TXN005', 'MERCH005', 'CUST005', 'PM005', 
'DEV005', '20231026', 'STAT005', 'PROD005', 'LOC006', 
'CUR004', '2023-10-26 14:20:00', 2499.99, 200.00),

('TXN006', 'MERCH006', 'CUST006', 'PM006', 
'DEV006', '20231027', 'STAT006', 'PROD006', 'LOC007', 
'CUR005', '2023-10-27 16:30:00', 199.99, 16.00),

('TXN007', 'MERCH001', 'CUST005', 'PM002', 
'DEV003', '20231028', 'STAT001', 'PROD001', 'LOC006', 
'CUR004', '2023-10-28 10:45:00', 899.99, 75.00),

('TXN008', 'MERCH003', 'CUST004', 'PM003', 
'DEV002', '20231029', 'STAT002', 'PROD003', 'LOC005', 
'CUR003', '2023-10-29 11:50:00', 3.99, 0.32),

('TXN009', 'MERCH002', 'CUST006', 'PM001', 
'DEV001', '20231030', 'STAT003', 'PROD002', 'LOC007', 
'CUR005', '2023-10-30 13:25:00', 1299.99, 104.00);