select 
    c.CustomerName as CustomerName, 
    count(o.OrderID) as OrdersCount, 
    round(sum(o.TotalAmount),2) as TotatAmount,
    min(o.OrderDate) as FirstOrder,
    max(o.OrderDate) as RecentOrder,
from {{ ref('stg_orders') }} o
inner join {{ ref('customer_details') }} c on o.CustomerID = c.CustomerID
group by 1