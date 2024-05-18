select 
    NationID,
    NationName,
    RegionID,
    Capital,
    Population
from {{ source('staging', 'raw_nations') }}