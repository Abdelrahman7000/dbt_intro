select 
    o.Country as Country, 
    count(o.OrderID) as OrdersCount, 
    round(sum(o.TotalAmount),2) as TotatAmount,
    round(avg(o.TotalAmount),2) as AverageAmount,
from {{ ref('order_details') }} o
group by 1