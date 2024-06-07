select p.*, c.CATEGORYNAME
from {{ ref('stg_products') }} p 
left join from {{ ref('stg_categories') }} c on p.CATEGORYID = c.CATEGORYID
