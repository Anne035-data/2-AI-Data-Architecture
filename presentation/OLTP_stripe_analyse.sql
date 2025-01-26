-- Revenus totaux par marchand
SELECT 
    m.merchant_name,
    COUNT(*) as nombre_transactions,
    SUM(t.amount) as revenu_total
FROM Transaction t
JOIN Merchant m ON t.merchant_id = m.merchant_id
GROUP BY m.merchant_name
ORDER BY revenu_total DESC;


-- Transactions à haut risque par score de fraude
SELECT 
    t.transaction_id,
    s.status_name,
    s.fraude_score,
    t.amount,
    c.customer_name,
    m.merchant_name
FROM Transaction t
JOIN Status s ON t.status_id = s.status_id
JOIN Customer c ON t.customer_id = c.customer_id
JOIN Merchant m ON t.merchant_id = m.merchant_id
WHERE s.fraude_score > 0.5
ORDER BY s.fraude_score DESC;

-- Analyse des transactions frauduleuses par type de paiement
SELECT 
    pm.payment_type,
    COUNT(*) as nombre_transactions_suspectes,
    AVG(s.fraude_score) as score_moyen
FROM Transaction t
JOIN Status s ON t.status_id = s.status_id
JOIN Payment_method pm ON t.payment_method_id = pm.payment_method_id
WHERE s.fraude_score > 0.5
GROUP BY pm.payment_type
ORDER BY score_moyen DESC;

-- Segmentation par volume de transactions
SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(*) as nombre_transactions,
    SUM(t.amount) as montant_total,
    CASE 
        WHEN COUNT(*) > 3 THEN 'Client Fréquent'
        WHEN SUM(t.amount) > 1000 THEN 'Gros Acheteur'
        ELSE 'Client Standard'
    END as segment
FROM Customer c
JOIN Transaction t ON c.customer_id = t.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY montant_total DESC;

-- Évolution des transactions par jour
SELECT 
    date_id,
    COUNT(*) as nombre_transactions,
    SUM(amount) as montant_total,
    AVG(amount) as montant_moyen
FROM Transaction
GROUP BY date_id
ORDER BY date_id;