WITH STATION_DIM AS (

    select 
    distinct
    BIKE_ID, --primary key
    START_STATION_ID, 
    START_STATION_NAME, 
    START_STATION_LAT,
    START_STATION_LONG,
    END_STATION_ID, 
    END_STATION_NAME,
    END_STATION_LAT, 
    END_STATION_LONG

    from {{ ref('citi_stg') }}
)

select * 
from STATION_DIM