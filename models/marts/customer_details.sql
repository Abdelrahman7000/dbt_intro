select 
    c.CustomerID,
    c.CustomerName,
    c.Country,
    c.Email,
    c.Phone,
    n.NationName,
    n.Population,
    r.RegionName
from {{ ref('stg_customers') }} c 
inner join{{ ref('stg_nations') }} n on n.NationID=c.NationID
inner join {{ ref('stg_regions') }} r on r.RegionID=n.RegionID
