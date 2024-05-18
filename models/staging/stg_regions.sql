select
    RegionID,
    RegionName,
    Headquarters
from  {{ source('staging', 'raw_regions') }}