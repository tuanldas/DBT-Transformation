with months as
         (SELECT DISTINCT *
          FROM (VALUES (1),
                       (2),
                       (3),
                       (4),
                       (5),
                       (6),
                       (7),
                       (8),
                       (9),
                       (10),
                       (11),
                       (12)) AS x(month)),
     tk_and_year_created as (select tk, min(nam)
                             from "core.so_du_dau_ky_moi_tai_khoan"
                             group by tk
                             order by tk),
     tk as (select tk
            from tk_and_year_created)
    {% for i in tk %}
        select nam from tk_and_year_created where tk={{tk}} union all
    {% endfor %}