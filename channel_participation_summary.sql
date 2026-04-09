
-- Description: Example SQL to summarize fan segments by channel behavior
-- Note: Data and table names have been anonymized

SELECT
    CASE WHEN is_streaming_user = 1 THEN 'Streaming User' ELSE 'Non-Streaming User' END AS streaming_group,
    CASE WHEN is_audio_user = 1 THEN 'Audio User' ELSE 'Non-Audio User' END AS audio_group,
    CASE WHEN is_shop_purchaser = 1 THEN 'Shop Purchaser' ELSE 'Non-Shop Purchaser' END AS shop_group,
    COUNT(*) AS fans,
    SUM(CASE WHEN is_ticket_buyer = 1 THEN 1 ELSE 0 END) AS ticket_buyers,
    ROUND(
        SAFE_DIVIDE(SUM(CASE WHEN is_ticket_buyer = 1 THEN 1 ELSE 0 END), COUNT(*)),
        4
    ) AS buyer_rate
FROM analytics.fan_profiles
GROUP BY 1, 2, 3
ORDER BY fans DESC;
