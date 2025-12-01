WITH USER_DIM AS (



    select 
    BIKE_ID, --PRIMARY KEY 
    USER_TYPE,
    BIRTH_YEAR, 
    {{get_gender('GENDER')}} AS GENDER

    from {{ ref('citi_stg') }}
)

select * 
from USER_DIM