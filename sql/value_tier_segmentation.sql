
-- Portfolio Project: Fan Value Segmentation
-- Description: Example SQL to segment fans into value-based marketing tiers
-- Note: Data and table names have been anonymized

WITH fan_base AS (
    SELECT
        fan_id,
        email_address,
        overall_fan_score,
        ltv_score,
        streaming_score,
        ticketing_score,
        is_streaming_user,
        is_audio_user,
        is_shop_purchaser,
        is_ticket_buyer
    FROM analytics.fan_profiles
),

segmented AS (
    SELECT
        *,

        CASE
            WHEN ltv_score >= 80 THEN 'High Value'
            WHEN ltv_score >= 50 THEN 'Medium Value'
            ELSE 'Low Value'
        END AS value_tier,

        CASE
            WHEN overall_fan_score >= 80 THEN 'High Affinity'
            WHEN overall_fan_score >= 50 THEN 'Medium Affinity'
            ELSE 'Low Affinity'
        END AS affinity_tier,

        CASE
            WHEN is_ticket_buyer = 0
                 AND overall_fan_score >= 70
                 AND ltv_score >= 60
            THEN 'High-Potential Non-Buyer'
            WHEN is_ticket_buyer = 1
                 AND ltv_score >= 60
            THEN 'High-Value Buyer'
            WHEN is_ticket_buyer = 1
            THEN 'Buyer'
            ELSE 'Lower-Priority Non-Buyer'
        END AS marketing_segment

    FROM fan_base
)

SELECT
    fan_id,
    email_address,
    overall_fan_score,
    ltv_score,
    streaming_score,
    ticketing_score,
    value_tier,
    affinity_tier,
    marketing_segment
FROM segmented;
