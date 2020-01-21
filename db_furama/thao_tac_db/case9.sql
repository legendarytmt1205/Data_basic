SELECT month(ct.contract_date) as Thang , count(ct.contract_id) as  SoKhachHang
FROM db_furama.contracts ct
WHERE year(ct.contract_date)= 2019
GROUP BY month(ct.contract_date)
