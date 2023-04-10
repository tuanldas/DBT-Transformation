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
     tk_and_year_created as (select tk, min(nam) as nam
                             from "core.so_du_dau_ky_moi_tai_khoan"
                             group by tk
                             order by tk)
--      years as (SELECT DISTINCT *
--                FROM (VALUES (2017),
--                             (2018),
--                             (2019),
--                             (2020),
--                             (2021),
--                             (2022),
--                             (2023)) AS x(year))
-- select distinct month, year
-- from months
--          join years on true
-- order by year, month;

select *
from tk_and_year_created