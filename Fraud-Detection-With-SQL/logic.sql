-- QUERY 1: Last Login Before OTP
-- Purpose: it checks when did the logined last using the otp
-- Use: it checks user is active or not 
-- Output: OTP details + Last login time
SELECT 
    o.otp_id,
    o.user_id,
    o.otp_generated_time,
    MAX(l.login_time) AS last_login
FROM OTP_detect o
LEFT JOIN login_activity l
    ON o.user_id = l.user_id
   AND l.login_time <= o.otp_generated_time
GROUP BY o.otp_id, o.user_id, o.otp_generated_time;

-- Query 2: OTP Missue
-- Purpose: Detect transactions immediately after OTP generation (fraud pattern)
-- Pattern: OTP Generated → Debit within 10 minutes (without user intent)
-- Risk: HIGH (social engineering / unauthorized access)
select 
o.otp_id,
o.user_id,
otp_generated_time,
t.transaction_time,
t.transaction_type,
t.amount,

    COALESCE(t.transaction_time, o.otp_generated_time) AS transaction_time, -- if their is no transaction it shows the time
	COALESCE(t.transaction_type, 'NO_DEBIT_AFTER_OTP') AS transaction_type, -- if their is transaction it shows the text written
    COALESCE(t.amount, 0) AS amount, -- if the amount null make it as zero

  case
   when t.transaction_time is not null
   AND t.transaction_time > o.otp_generated_time
   AND t.transaction_time <= o.otp_generated_time + INTERVAL '10 minutes'
   then 1
   else  0
  end as otp_flag, 
 case 
  when t.transaction_time is not null
  and t.transaction_time > o.otp_generated_time
  and t.transaction_time <= o.otp_generated_time + interval '10min' -- Time Gap Between The Transaction
  then 'high'
  else 'low'
 end as risk

from OTP_detect o
left join transaction_table t
on o.user_id=t.user_id
and t.transaction_type ='debit'
group by otp_id,o.user_id,o.otp_generated_time,t.amount,t.transaction_time,t.transaction_type;


-- Query 3: FAKE & UNEXPECTED DEBIT ALERT
-- Purpose: Detect transactions that happened without user's knowledge
-- Pattern: Debit alert sent → No recent login → Transaction occurred
-- Risk: HIGH (Direct unauthorized access / Card cloning)
select 
t.user_id,
t.transaction_id,
o.otp_generated_time,
a.alert_time,
t.transaction_time,
t.transaction_type,
t.amount as "Amount_Fraud",
-- fraud based on timing
case   
   when transaction_time < alert_time
   then
   'Pre_alert_fraud'
   when transaction_time > alert_time
   then 'Post_Alert_Fraud'
   else 'Instant fraud'
end as Fraud_category,
'High' as Risk_level,

-- fraud based on the otp detection
 case
  when transaction_time < otp_generated_time
  then 'Transaction Before OTP - Critical'
  when transaction_time  > otp_generated_time
  then  'Transaction After OTP -  Missue'
  else 'not matched any'
end as Fraud_type

from transaction_table t


inner join alert a  -- same user data compare 
 on t.user_id=a.user_id
 and a.alert_type='debit'
 and a.alert_time between
 t.transaction_time - interval '5 min'
 and t.transaction_time + interval '5 min' 

 inner join OTP_detect o
 on t.user_id=o.user_id
 and o.otp_generated_time between transaction_time - interval '10 min'
 and  transaction_time + interval '10 min'

where t.transaction_type = 'debit'  
  and t.transaction_status = 'success'


-- Query 3: NIGHT-TIME HIGH AMOUNT TRANSACTION
-- Purpose: Find high-value transactions at night (when user usually sleeps)
-- Method: Compare night transaction with user's day-time average
-- Logic: Night + High amount = Suspicious
select 
t.user_id,
t.transaction_id,
t.merchant_name,
t.transaction_time,
t.amount,


(select avg(amount)
from transaction_table 
where 
user_id=t.user_id
and transaction_type='debit'
and (extract(hour from transaction_time) between 6 and 22)
) as avg_day_transaction,


(select avg(amount)
from transaction_table 
where user_id=t.user_id and transaction_type='debit' 
and  (extract(hour  from transaction_time)>=22
or extract (hour from transaction_time)<= 5) 
) as avg_nightime_transaction,

-- RISK LEVEL: Based on amount comparison
case
 when t.amount >(select avg(amount)*3
 from transaction_table 
 where user_id=t.user_id and 
 transaction_type='debit'
 )
 then 'High'

when t.amount > (select avg(amount)*2
from transaction_table 
where user_id=t.user_id and transaction_type='debit')
then 'medium'
else 'low'
end as risk_level
from transaction_table t;

-- Query 4: MICRO-DEBIT PROBING 
-- Purpose: Detect small repeated transactions used to test if card is valid
-- Pattern: Multiple small amounts (≤₹10) in short time (card verification)
-- Risk: HIGH (Card testing before big fraud)
select 
  t.user_id,
  t.transaction_id,
  t.transaction_time,
  t.amount,
  'Micro Transaction without acess' as Reason,
case 
 when t.amount<=10
 then 'high'
 else 'low'
end as high_Risk_level
from transaction_table t
where transaction_type='debit' and t.amount<=10 
ORDER BY t.transaction_time DESC;

-- Query 5 :New Merchant Fraud Detection
-- Purpose: Find first-time transactions with high amounts to unknown merchants
-- Method: Identify first transaction per merchant, flag if amount is high
-- Logic: User's first payment to merchant shouldn't be very large
WITH first_txn AS (
    SELECT 
        user_id,
        merchant_name,
        MIN(transaction_time) AS first_time
    FROM transaction_table
    WHERE transaction_type = 'debit'
    GROUP BY user_id, merchant_name
)
SELECT 
    t.transaction_id,
    t.user_id,
    t.merchant_name,
    t.amount,
    t.transaction_time,
    1 AS new_merchant_flag,
    'First transaction with merchant - High amount' AS fraud_reason,
    'MEDIUM' AS risk_level
FROM transaction_table t
INNER JOIN first_txn ft
    ON t.user_id = ft.user_id
    AND t.merchant_name = ft.merchant_name
    AND t.transaction_time = ft.first_time
WHERE t.amount > 5000  -- ₹5000+ on first merchant
  AND t.transaction_status = 'success'
ORDER BY t.amount DESC;


