{% set tks = geTks() %}

{% for i in tks %}
        select nam from ghep_so_du_dau_ky_va_phat_sinh.sql where tk='{{i}}'
        {% if not loop.last -%} union all {%- endif %}
    {% endfor %}
