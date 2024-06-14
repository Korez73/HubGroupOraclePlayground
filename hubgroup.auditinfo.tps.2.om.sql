/* TPS to OM */
select event_key AS "TPS Order ID", 
SENDER_NAME, STATUS, EVENT_NAME, EVENT_KEY, 
PRIMARY_SOURCE_SYSTEM, DOMAIN_NAME, SERVICE_NAME, ERROR_REASON, EVENT_TIMESTAMP
from hubgroup.audit_info
WHERE service_name IN ('OrderOMSubscriber','OrderNotificationsAdapter')
AND event_key = '140110196'
order by event_timestamp desc
FETCH FIRST 100 ROWS ONLY

/* OM TO TPS */
/*
select event_key AS "OM Order ID", HUBGROUP.AUDIT_INFO.*
from hubgroup.audit_info
WHERE service_name IN ('OrderOMSubscriber','OrderNotificationsAdapter')
FETCH FIRST 100 ROWS ONLY
*/