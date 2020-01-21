 
SELECT ct.contract_id
		, ct.contract_date
		, ct.contract_date_end
        , ct.deposit 
        , count(ctd.contract_detail_id) as SoLuongDichVuDiKem
from db_furama.contracts ct
inner join db_furama.contract_details ctd on ct.contract_id = ctd.contract_id 
group by ctd.contract_id