drop table if exists login_activity;
create table login_activity(
login_type varchar(200),
login_time timestamp,
user_id varchar(200)
);

select * from login_activity;
select substring (user_id,2):: integer from login_activity;