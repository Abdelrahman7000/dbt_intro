select 
    c.Country as Country, 
    count(o.OrderID) as OrdersCount, 
    round(sum(o.TotalAmount),2) as TotatAmount,
    round(avg(o.TotalAmount),2) as AverageAmount,
from {{ ref('stg_orders') }} o
inner join {{ ref('customer_details') }} c on o.CustomerID = c.CustomerID
group by 1