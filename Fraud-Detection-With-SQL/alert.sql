drop table if exists alert;
create table alert(
alert_id varchar(200),
alert_time timestamp,
alert_type varchar(200),
alert_amount int,
user_id varchar(200)
);

select * from alert;
select 
substring(alert_id,2):: integer,
substring(alert_type,2):: integer
from alert;
alter table alert al
