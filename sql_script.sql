-- table creation (tables were created via csv upload in bigquery console)
-- tables: facebook_ads, google_ads, tiktok_ads

-- unified model
create table `merged_ads` as
select date, 'facebook' as platform, campaign_id, campaign_name, ad_set_id as ad_group_id, ad_set_name as ad_group_name, impressions, clicks, spend as cost, conversions, video_views, round(safe_divide(clicks, impressions), 4) as ctr, round(safe_divide(spend, clicks), 2) as cpc, round(safe_divide(spend, conversions), 2) as cost_per_conversion, null as conversion_value, round(safe_divide(spend, impressions) * 1000, 2) as cpm
from `facebook_ads`

union all

select date, 'google' as platform, campaign_id, campaign_name, ad_group_id, ad_group_name, impressions, clicks, cost, conversions, null as video_views, ctr, avg_cpc as cpc, round(safe_divide(cost, conversions), 2) as cost_per_conversion, conversion_value, round(safe_divide(cost, impressions) * 1000, 2) as cpm
from `google_ads`

union all

select date, 'tiktok' as platform, campaign_id, campaign_name, adgroup_id as ad_group_id, adgroup_name as ad_group_name, impressions, clicks, cost, conversions, video_views, round(safe_divide(clicks, impressions), 4) as ctr, round(safe_divide(cost, clicks), 2) as cpc, round(safe_divide(cost, conversions), 2) as cost_per_conversion, null as conversion_value, round(safe_divide(cost, impressions) * 1000, 2) as cpm
from `tiktok_ads`;
