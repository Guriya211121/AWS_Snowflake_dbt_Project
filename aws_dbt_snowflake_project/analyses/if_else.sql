{% set flag = 2 %}


SELECT * FROM {{ ref('bronze_bookings')}}
{% if flag == 1 %}
    where NIGHT_BOOKED > 1
{% else %}
    where NIGHT_BOOKED = 1
{% endif %}