# fan-value-segmentation
# Fan Value Segmentation

## Overview
This project focuses on identifying high-potential fan segments using modeled value and engagement indicators such as lifetime value (LTV), digital engagement, and ticket purchasing behavior.

The goal was to help surface audiences with strong fan affinity and commercial potential, especially those who are highly engaged but not yet converting to ticket buyers.

---

## Business Problem

Sports organizations interact with fans across many channels, including ticketing, streaming, digital content, email, and merchandise. While some fans are already active buyers, others show strong signs of engagement without converting in key revenue channels.

This project answers:
- Which fans show high affinity but low ticket conversion?
- How can modeled fan scores help prioritize marketing audiences?
- Which segments are most promising for targeted campaigns?

---

## Data Sources

- Fan-level identity and behavioral data  
- Modeled LTV attributes  
- Engagement / avidity-related scores  
- Channel participation flags (streaming, audio, shop, ticketing, email)

---

## Feature Engineering

Key features included:

- **Overall fan score / engagement score**
- **LTV indicators**
- **Ticket buyer status**
- **Streaming / audio / digital participation flags**
- **Cross-channel behavior segments**

These features were used to identify fans with strong engagement signals but incomplete commercial conversion.

---

## Analytical Approach

- Queried fan-level records in SQL
- Used modeled score fields to group fans into meaningful value tiers
- Flagged digitally engaged fans who had not yet purchased tickets
- Built segments that could support conversion-focused marketing strategies

---

## Key Use Case

A primary use case was identifying fans who:
- had meaningful digital engagement
- showed modeled fan value or affinity
- were not current ticket buyers

This segment represented an opportunity for:
- targeted acquisition campaigns
- personalized messaging
- ticket conversion efforts

---

## Impact

- Helped translate modeled fan attributes into actionable marketing audiences
- Created a repeatable framework for fan segmentation
- Supported more strategic outreach based on fan value, not just past purchases

---

## Tools & Technologies

- SQL  
- Power BI  
- Predictive / modeled fan attributes  

---

## Future Enhancements

- Predict ticket purchase likelihood directly
- Combine value segmentation with campaign response data
- Add more robust scoring tiers and audience prioritization
