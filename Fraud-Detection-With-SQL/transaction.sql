drop table if exists transaction_table;
create table transaction_table(
user_id varchar(200),
transaction_id varchar(200),
amount decimal(10,2),
transaction_type varchar(200),
transaction_time timestamp,
merchant_name varchar(200),
transaction_status varchar(200)
);

select 
substring(user_id,2)::integer,
substring(transaction_id,2)::integer,
substring(transaction_type,2)::integer,
substring(merchant_name,2)::integer,
substring(transaction_status,2)::integer
from transaction_table;

select * from transaction_table;




-- Insert 100 transaction records


select user_id,transaction_id,amount from transaction_table where amount=5.00; 
