select 
od.DISCOUNT,
od.QUANTITY,
od.UNITPRICE,
o.SHIPPOSTALCODE,
o.ORDERDATE,
o.SHIPADDRESS,
o.SHIPCOUNTRY,
o.FREIGHT,
o.SHIPNAME,
o.SHIPCITY,
o.REQUIREDDATE,
o.SHIPREGION,
o.SHIPPEDDATE,
p.PRODUCTNAME,
p.CATEGORYNAME,
c.COUNTRY,
c.CITY,
c.COMPANYNAME,
c.REGION,
c.CONTACTNAME,
c.CONTACTTITLE,
e.ADDRESS,
e.FIRSTNAME,
e.LASTNAME,
e.COUNTRY as employee_country,
sh.COMPANYNAME as shipper_COMPANYNAME

from {{ ref('stg_order_details') }} od 
join  {{ ref('stg_orders') }} o on od.ORDERID = o.ORDERID
left join {{ ref ('dim_products') }} p on od.PRODUCTID = p.PRODUCTID
left join {{ ref ('stg_customers') }} c on o.CUSTOMERID = c.CUSTOMERID
left join {{ ref ('stg_employees') }} e on o.EMPLOYEEID = e.EMPLOYEEID
left join {{ ref ('stg_suppliers') }} s on p.SUPPLIERID = s.SUPPLIERID
left join {{ ref ('stg_shippers') }} sh on o.SHIPVIA = sh.SHIPPERID
