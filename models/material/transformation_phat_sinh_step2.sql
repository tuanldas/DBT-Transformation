{% set tks = geTks() %}

{% for i in tks %}
        select nam from transformation_phat_sinh_thang_1 where tk={{tk}} union
    {% endfor %}