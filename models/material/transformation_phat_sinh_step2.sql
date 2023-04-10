{% set tks = select tk from tk_and_year_created %}

{% for i in tks %}
        select nam from tk_and_year_created where tk={{tk}} union all
    {% endfor %}