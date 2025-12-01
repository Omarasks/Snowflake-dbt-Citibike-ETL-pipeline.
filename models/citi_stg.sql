WITH CITI_BIKE AS (



    select 
    TRIP_DURATION, 
    TO_TIMESTAMP(START_TIME) AS START_TIME, 
    TO_TIMESTAMP(STOP_TIME) AS STOP_TIME, 
    START_STATION_ID, 
    START_STATION_NAME, 
    START_STATION_LAT, 
    START_STATION_LONG, 
    END_STATION_ID, 
    END_STATION_NAME, 
    END_STATION_LAT, 
    END_STATION_LONG, 
    BIKE_ID, 
    USER_TYPE, 
    BIRTH_YEAR,
    GENDER
    from {{ source('citi_analytics', 'citi_raw') }}
    where TRIP_DURATION != 'tripduration' 
)
select * 
from CITI_BIKE