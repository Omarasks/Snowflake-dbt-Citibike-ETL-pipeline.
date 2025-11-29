WITH DATE_DIM AS (



    select 
    DATE(TO_TIMESTAMP(START_TIME)) AS DATE_STARTED_AT, 
    HOUR(TO_TIMESTAMP(START_TIME)) AS HOUR_STARTED_AT,

    {{day_type('START_TIME')}} AS TYPE_OF_DAY, 
    {{get_season('START_TIME')}} AS SEASON_TYPE


    from {{ ref('citi_stg') }}
)
select *
from DATE_DIM