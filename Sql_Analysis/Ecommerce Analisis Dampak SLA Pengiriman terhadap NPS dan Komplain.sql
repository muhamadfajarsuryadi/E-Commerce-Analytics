-- Analisis Dampak SLA Pengiriman terhadap NPS dan Komplain
SELECT
    shipping_category,
    COUNT(order_id) AS total_orders,
    ROUND(AVG(support_tickets), 1) AS avg_support_tickets,
    ROUND(AVG(nps_score), 1) AS avg_nps_score
FROM
    `ecommerce.ecommerce_cleaned`
GROUP BY
    shipping_category
ORDER BY
    avg_nps_score DESC;