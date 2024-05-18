select 
    OrderID,
    CustomerID,
    cast(OrderDate as date) OrderDate,
    cast(ShipDate as date) ShipDate,
    ShipCountry,
    round(TotalAmount,2) TotalAmount
from {{ source('staging', 'raw_orders') }}