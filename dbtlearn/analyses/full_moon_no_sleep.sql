with mart_fullmoon_reviews as (
        Select * from {{ ref('mart_fullmoon_reviews') }}
)
Select
    is_full_moon,
    review_sentiment,
    count(*) as review_sentiment
from    mart_fullmoon_reviews

group by
    is_full_moon,
    review_sentiment
order by
    is_full_moon
    ,review_sentiment