WITH RIDE_FACT AS (




    select 
    BIKE_ID, --PRIMARY KEY
    DATE(TO_TIMESTAMP(START_TIME)) AS DATE_STARTED_AT,
    TO_NUMBER(TRIP_DURATION) AS TRIP_DURATION,
    START_STATION_NAME, 
    END_STATION_NAME

    from {{ ref('citi_stg') }}
)

select * 
from RIDE_FACT