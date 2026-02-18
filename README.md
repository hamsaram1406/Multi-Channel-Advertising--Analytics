# Multi-Channel-Advertising--Analytics
Transform raw advertising data from three major platforms into actionable insights through a unified data model and compelling visualizations

Data : Raw advertising data from three platforms - Facebook, Google, and TikTok 
Task : Unify it into a single model and build a dashboard to analyze cross-channel performance

What I did
Step 1: Loaded the data into BigQuery
I uploaded 3 CSV files into Google BigQuery as separate tables, one for each ad platform. Each file had different column names and metrics, so they couldn't be compared directly.
Step 2: Created a unified table
I wrote a SQL query that combines all three tables into one called merged_ads. This involved renaming columns to match across platforms (ex: Facebook calls it spend, Google calls it cost), and calculating common metrics like CTR, CPC, and CPA so everything is on the same scale.
Step 3: Built the dashboard
I connected BigQuery to Looker Studio and built a one-page dashboard that shows:

Total spend, impressions, clicks, and conversions across all platforms
Daily spend and conversion trends by platform
Spend share breakdown (pie chart)
CTR and CPA comparison by platform
A campaign-level performance table

Key Insights:
TikTok takes 57% of total budget but has the highest CPA ($11.81). This is great for reach but least cost-efficient for conversions.
Facebook delivers the lowest CPA ($5.97) with Conversions Retargeting being the best performing campaign. This makes it a strong candidate for budget increase.
Google's Search Brand Terms has the highest CTR (5.22%) and lowest CPA ($5.10) with a 5.6x ROAS ($210.9K conversion value on $37.7K spend). 
Google's Search Generic Terms has the worst CPA ($24.87) across all campaigns. It needs keyword optimization or budget reallocation.
Budget reallocation opportunity: Can shift 10-15% of TikTok spend towards Facebook retargeting and Google could improve overall CPA.

Dashboard Link: https://lookerstudio.google.com/s/rI7rcIYqqqw 
