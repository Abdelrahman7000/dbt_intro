select 
    CustomerID,
    concat(CustomerName,' ',ContactName) CustomerName,
    Country,
    NationID,
    Email,
    regexp_replace(Phone,'[A-Za-z]','') Phone
from {{ source('staging', 'raw_customers') }}
