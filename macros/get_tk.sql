{% macro geTks() %}
{{ return(select tk from tk_and_year_created) }}
{% endmacro %}