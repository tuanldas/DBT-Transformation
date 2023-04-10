{% macro geTks() %}
{{ return(select tk
                             from "core.so_du_dau_ky_moi_tai_khoan"
                             group by tk
                             order by tk) }}
{% endmacro %}