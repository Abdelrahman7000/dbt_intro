select 
    o.CustomerName as CustomerName, 
    count(o.OrderID) as OrdersCount, 
    round(sum(o.TotalAmount),2) as TotatAmount,
    min(o.OrderDate) as FirstOrder,
    max(o.OrderDate) as RecentOrder,
from {{ ref('order_details') }} o
group by 1