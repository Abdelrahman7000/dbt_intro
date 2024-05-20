select
    c.CustomerID,
    c.CustomerName,
    c.Country,
    c.Email,
    c.Phone,
    c.NationName,
    c.Population,
    c.RegionName,
    o.OrderID,
    cast(o.OrderDate as date) OrderDate,
    cast(o.ShipDate as date) ShipDate,
    o.ShipCountry,
    round(o.TotalAmount,2) TotalAmount

from {{ ref('customer_details') }} c 
inner join {{ ref('stg_orders') }} o on c.CustomerID=c.CustomerID
