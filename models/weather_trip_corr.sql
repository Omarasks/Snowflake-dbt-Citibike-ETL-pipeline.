WITH WEATHER_TRIP_CORR AS (



    select 
    r.*,
    w.*
    from {{ ref('ride_fact') }} as r 
    left join {{ ref('daily_weathr') }} as w
    on w.DAILY_WEATHER = r.DATE_STARTED_AT

)

select *
from WEATHER_TRIP_CORR