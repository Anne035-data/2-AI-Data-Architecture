USE WAREHOUSE COMPUTE_WH;
USE DATABASE OLAP_STRIP_PROJECT;
USE SCHEMA PUBLIC;

-- Dim_compliance
INSERT INTO OLAP_STRIP_PROJECT.PUBLIC.Dim_compliance 
(compliance_key, regulation_type, compliance_status, audit_log, last_audit_date)
VALUES 
('COMP001', 'GDPR', 'Compliant', 'Log001', '2023-01-15'),
('COMP002', 'PCI-DSS', 'Non-Compliant', 'Log002', '2023-03-20'),
('COMP003', 'HIPAA', 'Compliant', 'Log003', '2023-05-25'),
('COMP004', 'KYC', 'Blocked', 'Log004', '2023-12-01'),
('COMP005', 'AML', 'Investigation Required', 'Log005', '2024-01-10'),
('COMP006', 'OFAC', 'Sanctions List', 'Log006', '2024-01-15');

-- Dim_currency
INSERT INTO OLAP_STRIP_PROJECT.PUBLIC.Dim_currency 
(currency_key, from_currency, to_currency, exchange_rate)
VALUES 
('CUR001', 'USD', 'EUR', 0.85),
('CUR002', 'EUR', 'JPY', 129.53),
('CUR003', 'GBP', 'USD', 1.39),
('CUR004', 'USD', 'CAD', 1.25),
('CUR005', 'EUR', 'GBP', 0.86),
('CUR006', 'JPY', 'USD', 0.0091),
('CUR007', 'IRR', 'USD', 0.000024),
('CUR008', 'CNY', 'USD', 0.15);

-- Dim_location
INSERT INTO OLAP_STRIP_PROJECT.PUBLIC.Dim_location 
(location_key, country_name, region, city, embargo, location_ip)
VALUES 
('LOC001', 'France', 'Ile-de-France', 'Paris', FALSE, '192.168.0.1'),
('LOC002', 'USA', 'California', 'San Francisco', FALSE, '192.168.0.2'),
('LOC003', 'Germany', 'Bavaria', 'Munich', FALSE, '192.168.0.3'),
('LOC004', 'Iran', 'Tehran Province', 'Tehran', TRUE, '10.10.10.1'),
('LOC005', 'UK', 'England', 'London', FALSE, '192.168.0.5'),
('LOC006', 'Japan', 'Kanto', 'Tokyo', FALSE, '192.168.0.6'),
('LOC007', 'China', 'Shanghai', 'Shanghai', FALSE, '192.168.0.7'),
('LOC008', 'France', 'Rhône-Alpes', 'Lyon', FALSE, '192.168.0.8'),
('LOC009', 'USA', 'New York', 'New York', FALSE, '192.168.0.9');

-- Dim_payment_method
INSERT INTO OLAP_STRIP_PROJECT.PUBLIC.Dim_payment_method 
(payment_method_key, payment_type, provider, online, compliance_key)
VALUES 
('PAY001', 'Credit Card', 'Visa', TRUE, 'COMP001'),
('PAY002', 'PayPal', 'PayPal Inc.', TRUE, 'COMP001'),
('PAY003', 'Bank Transfer', 'BNP Paribas', TRUE, 'COMP001'),
('PAY004', 'Local Iranian Bank', 'Bank Melli', TRUE, 'COMP006'),
('PAY005', 'Digital Wallet', 'Apple Pay', TRUE, 'COMP001'),
('PAY006', 'Credit Card', 'Mastercard', TRUE, 'COMP001'),
('PAY007', 'Cryptocurrency', 'Bitcoin', TRUE, 'COMP005');

-- Dim_product
INSERT INTO OLAP_STRIP_PROJECT.PUBLIC.Dim_product 
(product_key, product_name, price, category, online, total_sell, authorized)
VALUES 
('PROD001', 'Smartphone X', 899.99, 'Electronics', TRUE, 1500, TRUE),
('PROD002', 'Designer Handbag', 1299.99, 'Fashion', TRUE, 750, TRUE),
('PROD003', 'Organic Bananas', 3.99, 'Grocery', TRUE, 10000, TRUE),
('PROD004', 'Premium Headphones', 299.99, 'Electronics', TRUE, 3000, TRUE),
('PROD005', 'Industrial Equipment', 15000.00, 'Industrial', TRUE, 50, FALSE),
('PROD006', 'Military Grade GPS', 2999.99, 'Electronics', TRUE, 0, FALSE),
('PROD007', 'Laptop Pro', 1799.99, 'Electronics', TRUE, 800, TRUE);

-- Dim_merchant
INSERT INTO OLAP_STRIP_PROJECT.PUBLIC.Dim_merchant 
(merchant_key, merchant_name, merchant_phone, merchant_email, business_type, country_name, registration_date, compliance_key)
VALUES 
('MERCH001', 'Super Shop', '+1-555-0001', 'contact@supershop.com', 'Retail', 'USA', '2018-01-01', 'COMP001'),
('MERCH002', 'Fashion Hub', '+33-555-0002', 'contact@fashionhub.com', 'Fashion', 'France', '2019-03-15', 'COMP001'),
('MERCH003', 'QuickMart', '+44-555-0003', 'contact@quickmart.com', 'Grocery', 'UK', '2017-06-20', 'COMP001'),
('MERCH004', 'Tehran Trading Co', '+98-555-0004', 'contact@tehrantrading.com', 'Industrial', 'Iran', '2020-02-10', 'COMP006'),
('MERCH005', 'Tech Haven', '+81-555-0005', 'contact@techhaven.com', 'Electronics', 'Japan', '2019-09-05', 'COMP001');

-- Dim_customer
INSERT INTO OLAP_STRIP_PROJECT.PUBLIC.Dim_customer 
(customer_key, customer_name, customer_age, customer_phone, customer_email, customer_since, customer_value, compliance_key)
VALUES 
('CUST001', 'John Smith', 35, '+1-555-0123', 'john.s@email.com', '2020-01-15', '25000', 'COMP001'),
('CUST002', 'Emma Wilson', 28, '+44-555-0124', 'emma.w@email.com', '2021-03-20', '15000', 'COMP001'),
('CUST003', 'Ali Akbari', 42, '+98-555-0125', 'ali.a@email.com', '2019-06-10', '35000', 'COMP006'),
('CUST004', 'Maria Garcia', 31, '+33-555-0126', 'maria.g@email.com', '2022-02-28', '10000', 'COMP001'),
('CUST005', 'Hassan Tehrani', 45, '+98-555-0127', 'hassan.t@email.com', '2018-12-05', '50000', 'COMP006'),
('CUST006', 'Sophie Martin', 29, '+33-555-0128', 'sophie.m@email.com', '2021-09-15', '20000', 'COMP001'),
('CUST007', 'David Chen', 38, '+86-555-0129', 'david.c@email.com', '2020-07-22', '30000', 'COMP001');

-- Dim_date
INSERT INTO OLAP_STRIP_PROJECT.PUBLIC.Dim_date 
(date_key, day, month, year, quarter, is_weekend, is_holiday)
VALUES 
('2024-10-17 12:30:00', 17, 10, 2024, 4, FALSE, FALSE),
('2024-10-18 08:45:00', 18, 10, 2024, 4, FALSE, FALSE),
('2024-10-19 16:00:00', 19, 10, 2024, 4, TRUE, FALSE),
('2024-11-05 14:20:00', 5, 11, 2024, 4, FALSE, FALSE),
('2024-12-01 10:45:00', 1, 12, 2024, 4, TRUE, FALSE),
('2024-09-30 18:30:00', 30, 9, 2024, 3, FALSE, FALSE);

-- Fact_fraud_analysis
INSERT INTO OLAP_STRIP_PROJECT.PUBLIC.Fact_fraud_analysis 
(fraud_key, date_key, merchant_key, payment_method_key, product_key, location_key, fraud_score, is_fraudulent)
VALUES 
('FRAUD001', '2024-10-17 12:30:00', 'MERCH001', 'PAY001', 'PROD001', 'LOC002', 0.85, FALSE),
('FRAUD002', '2024-10-18 08:45:00', 'MERCH002', 'PAY002', 'PROD002', 'LOC008', 0.2, FALSE),
('FRAUD003', '2024-10-19 16:00:00', 'MERCH004', 'PAY004', 'PROD005', 'LOC004', 0.95, TRUE),
('FRAUD004', '2024-11-05 14:20:00', 'MERCH001', 'PAY006', 'PROD004', 'LOC009', 0.3, FALSE),
('FRAUD005', '2024-12-01 10:45:00', 'MERCH003', 'PAY002', 'PROD003', 'LOC005', 0.1, FALSE),
('FRAUD006', '2024-09-30 18:30:00', 'MERCH002', 'PAY002', 'PROD001', 'LOC001', 0.4, FALSE);

-- Fact_transaction
INSERT INTO OLAP_STRIP_PROJECT.PUBLIC.Fact_transaction 
(transaction_key, date_key, customer_key, merchant_key, payment_method_key, product_key, fraud_key, currency_key, location_key, transaction_count, total_revenue, total_tax)
VALUES 
('TX12345', '2024-10-17 12:30:00', 'CUST001', 'MERCH001', 'PAY001', 'PROD001', 'FRAUD001', 'CUR001', 'LOC002', 1, 100.50, 20.10),
('TX1003', '2024-10-18 08:45:00', 'CUST004', 'MERCH002', 'PAY002', 'PROD002', 'FRAUD002', 'CUR002', 'LOC008', 1, 350.00, 70.00),
('TX1005', '2024-10-19 16:00:00', 'CUST003', 'MERCH004', 'PAY004', 'PROD005', 'FRAUD003', 'CUR007', 'LOC004', 1, 15000.00, 3000.00),
('TX54321', '2024-11-05 14:20:00', 'CUST002', 'MERCH001', 'PAY006', 'PROD004', 'FRAUD004', 'CUR001', 'LOC009', 1, 249.99, 50.00),
('TX67890', '2024-12-01 10:45:00', 'CUST003', 'MERCH003', 'PAY002', 'PROD003', 'FRAUD005', 'CUR003', 'LOC005', 1, 45.25, 9.05),
('TX98765', '2024-09-30 18:30:00', 'CUST004', 'MERCH002', 'PAY002', 'PROD001', 'FRAUD006', 'CUR002', 'LOC001', 1, 89.99, 18.00);