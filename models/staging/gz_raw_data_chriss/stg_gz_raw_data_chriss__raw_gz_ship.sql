with 

source as (

    select * from {{ source('gz_raw_data_chriss', 'raw_gz_ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        shipping_fee_1,
        logcost,
      CAST (ship_cost AS INTEGER) AS ship_costs

    from source

)

select * from renamed
