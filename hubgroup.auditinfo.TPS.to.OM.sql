/* TPS to OM */
set long 10000000;
set longchunksize 10000000;

select event_key AS "TPS Order ID", 
SENDER_NAME, STATUS, EVENT_NAME, EVENT_KEY, 
PRIMARY_SOURCE_SYSTEM, DOMAIN_NAME, SERVICE_NAME, ERROR_REASON, EVENT_TIMESTAMP
//FIELD_1
from hubgroup.audit_info
WHERE service_name IN ('OrderOMSubscriber','OrderNotificationsAdapter')
AND event_key = '140006799'
order by event_timestamp desc
FETCH FIRST 5 ROWS ONLY