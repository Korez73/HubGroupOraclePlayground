/* OM to TPS */
select event_key AS "OM Order ID", 
SENDER_NAME, STATUS, EVENT_NAME, EVENT_KEY, 
PRIMARY_SOURCE_SYSTEM, DOMAIN_NAME, SERVICE_NAME, ERROR_REASON, EVENT_TIMESTAMP
--FIELD_1
from hubgroup.audit_info
WHERE service_name IN ('OrderOMTPSSubscriber','OrderOMAdapter')
AND event_key = '2000095672'
order by event_timestamp desc
FETCH FIRST 100 ROWS ONLY
