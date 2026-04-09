-- Portfolio Project: Fan Value Segmentation
-- Description: Example SQL to identify highly engaged fans with commercial potential
-- Note: Data and table names have been anonymized

SELECT
    fan_id,
    email_address,
    city,
    state,
    overall_fan_score,
    ltv_score,
    streaming_score,
    ticketing_score,
    is_streaming_user,
    is_audio_user,
    is_shop_purchaser,
    is_ticket_buyer
FROM analytics.fan_profiles
WHERE overall_fan_score >= 70
  AND is_ticket_buyer = 0
  AND (
      is_streaming_user = 1
      OR is_audio_user = 1
      OR is_shop_purchaser = 1
  )
ORDER BY overall_fan_score DESC, ltv_score DESC;
