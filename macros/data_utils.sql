-- FUNCTION TO GET DAY TYPE

{% macro day_type(x)%}

CASE WHEN DAYNAME(TO_TIMESTAMP({{x}})) IN ('Sat', 'Sun')
    THEN 'WEEKEND'
    ELSE 'BUSINESS DAY'
    END 
{% endmacro %}


-- FUNCTION TO GET WHICH SEASON 

{% macro get_season(x) %} 

CASE WHEN MONTH(TO_TIMESTAMP({{x}})) IN (12, 1, 2)
    THEN 'WINTER' 
    WHEN MONTH(TO_TIMESTAMP({{x}})) IN (3, 4, 5)
    THEN 'SPRING'
    WHEN MONTH(TO_TIMESTAMP({{x}})) IN (6, 7, 8)
    THEN 'SUMMER'
    ELSE 'AUTUMN'
    END

{% endmacro %}

-- FUNCTION TO GET GENDER 
{% macro get_gender(x) %}

CASE {{x}}
    WHEN 1 THEN 'male'
    WHEN 2 THEN 'female'
    ELSE 'neutral'
    END

{% endmacro %}