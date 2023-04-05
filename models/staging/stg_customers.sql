{{
    config(
        post_hook=[
          "drop table  {{ this }}"
        ]
    )
    }}

with source as (select *
                from raw_customers),
     renamed as (select id as customer_id,
                        first_name,
                        last_name

                 from source)

select *
from renamed
