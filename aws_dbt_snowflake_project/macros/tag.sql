{% macro tag(column_name) %}
    CASE
        WHEN CAST({{ column_name }} AS INT) < 100 THEN 'low'
        WHEN CAST({{ column_name }} AS INT) < 200 THEN 'medium'
        ELSE 'high'
    END
{% endmacro %}