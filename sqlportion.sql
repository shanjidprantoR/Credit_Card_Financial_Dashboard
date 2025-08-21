SELECT * FROM ccdb.credit_card;
SHOW VARIABLES LIKE 'local_infile';

SET GLOBAL local_infile = 1;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/credit_card.csv'
INTO TABLE credit_card
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'   -- for using windows
IGNORE 1 ROWS
(Client_Num, Card_Category, Annual_Fees, Activation_30_Days, Customer_Acq_Cost, Week_Start_Date, Week_Num, Qtr, current_year,
 Credit_Limit, Total_Revolving_Bal, Total_Trans_Amt, Total_Trans_Vol, Avg_Utilization_Ratio, Use_Chip, Exp_Type, Interest_Earned, Delinquent_Acc);
 LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cc_add.csv'
INTO TABLE cc_detail
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'   -- for using windows
IGNORE 1 ROWS
(Client_Num, Card_Category, Annual_Fees, Activation_30_Days, Customer_Acq_Cost, Week_Start_Date, Week_Num, Qtr, current_year,
 Credit_Limit, Total_Revolving_Bal, Total_Trans_Amt, Total_Trans_Vol, Avg_Utilization_Ratio, Use_Chip, Exp_Type, Interest_Earned, Delinquent_Acc);