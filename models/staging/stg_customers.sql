select 
    CustomerID,
    concat(CustomerName,' ',ContactName) CusomerName,
    Country,
    NationID,
    Email,
    regexp_replace(Phone,'[A-Za-z]','') Phone
from {{ source('staging', 'raw_customers') }}
