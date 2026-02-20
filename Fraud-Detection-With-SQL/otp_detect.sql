drop table if exists OTP_detect;
create table OTP_detect(
user_id varchar(200),
otp_id varchar(200),
otp_generated_time timestamp,
otp_verified_time timestamp,
otp_channel varchar(200)
);




select substring(otp_id,4):: integer from OTP_detect;
select substring(user_id,2):: integer from OTP_detect;

select * from OTP_detect;

-- it show the last login of the user according to otp 
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












