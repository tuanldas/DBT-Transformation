    {% for i in (select tk
            from tk_and_year_created) %}
        select nam from tk_and_year_created where tk={{tk}} union all
    {% endfor %}