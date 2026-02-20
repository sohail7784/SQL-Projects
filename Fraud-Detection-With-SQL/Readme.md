## Overview
Banks and fintech companies face fraud every day - fake logins, suspicious transactions, OTP misuse. This database helps track and analyze these patterns to catch fraudsters before they cause damage.
Real-world scenario: If someone tries to login from 5 different devices in 10 minutes, or gets multiple OTP attempts, or makes unusual high-value transactions - these are red flags. This database stores all that activity so you can build alerts and catch fraud early.
## where it can be used
Banking apps: Track suspicious login patterns and transaction alerts
Payment gateways: Monitor OTP verification delays and failures
Fintech platforms: Detect unusual user behavior across devices
Security teams: Investigate fraud cases using historical data
## Dataset
the data in the sql query inserted through the csv
99 users with real-world activity patterns
Time range: Jan 2024 - Jan 2025 (13 months)
Sources: Original CSV files converted to SQL format
database tables
otp_detect - OTP Verification Tracking
Tracks when OTPs are generated and verified. Helps catch delays, multiple attempts, or channel switching (SMS vs App).

## login_activity - Login Monitoring
Records every login with device type and timestamp. Useful for detecting impossible travel, device switching, or unusual login times.

## alert - Transaction Alerts
Stores transaction alerts with amounts and types (credit/debit). Flags high-value or suspicious transactions.

## transaction_table
Stores all financial transactions made by users - both incoming and outgoing payments. Used to detect unusual spending patterns, rapid money transfers, or transactions that don't match a user's typical behavior.

## user_info
Contains user profile details like name, email, phone, account creation date, and KYC status. Helps verify user identity and cross-check if account details have been tampered with during fraud attempts.
