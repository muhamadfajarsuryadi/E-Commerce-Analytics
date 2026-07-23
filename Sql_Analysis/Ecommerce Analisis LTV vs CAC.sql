-- Analisis LTV vs CAC berdasarkan Segmen Pelanggan
SELECT
    customer_segment,
    ROUND(AVG(ltv_estimate), 2) AS avg_ltv_estimate,
    ROUND(AVG(cac), 2) AS avg_cac,
    FORMAT("%'d", CAST(SUM(net_revenue) AS INT64)) AS total_net_revenue
    FROM `ecommerce.ecommerce_cleaned`
GROUP BY
    customer_segment
ORDER BY
    total_net_revenue DESC;