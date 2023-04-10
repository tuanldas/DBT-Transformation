{% macro geTks() %}

{% set payment_methods_query %}
    select tk from "core.so_du_dau_ky_moi_tai_khoan" group by tk order by tk
{% endset %}
{% set results = run_query(payment_methods_query) %}
    {% if execute %}
{# Return the first column #}
{% set results_list = results.columns[0].values() %}
{% else %}
{% set results_list = [] %}
{% endif %}

{{ return(results_list) }}
{% endmacro %}