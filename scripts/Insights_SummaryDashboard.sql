

USE BankLoan_DB

SELECT * FROM dbo.bank_loan_data;



-- ## Finding The KPI's :



/*
-----------------------------------------------
1. Loan Applications : 
-----------------------------------------------
*/



-- Total Loan Application 
SELECT 
     COUNT(id) As Total_Loan_Applications
FROM bank_loan_data





--  MTD Applications ( Month-to-date ) 

SELECT 
     COUNT(id) As MTD_Total_Loan_Applications
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021






--  MoM Applications ( Month Over Month ) :


--> [ MoM =  ( MTD - PMTD ) / ( PMTD )  ]

SELECT 
     COUNT(id) As PMTD_Total_Loan_Applications
FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021










/*
-----------------------------------------------
2. Funded Amount : 
-----------------------------------------------
*/





-- Total Funded Amount : 

SELECT 
     SUM(loan_amount) As Total_Funded_Amount 
FROM bank_loan_data







--  MTD( Month-to-date ) Total Funded Amount :

SELECT 
     SUM(loan_amount) As MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND
YEAR(issue_date) = 2021










-- MoM Total Funded Amount ( Month Over Month ) :

--> [ MoM =  ( MTD - PMTD ) / ( PMTD )  ]



SELECT 
     SUM(loan_amount) As MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND
YEAR(issue_date) = 2021

SELECT 
     SUM(loan_amount) As PMTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND
YEAR(issue_date) = 2021

















/*
-----------------------------------------------
3. Amount Recieved : 
-----------------------------------------------
*/









-- Total Amount Received : 

SELECT 
     SUM(total_payment) As Total_Amount_Received
FROM bank_loan_data










-- MTD( Month-to-date ) Total Amount Received :



SELECT 
     SUM(total_payment) As MTD_Total_Amount_Received
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND
YEAR(issue_date) = 2021







--  MoM Total Amount Received ( Month Over Month ) :

--> [ MoM =  ( MTD - PMTD ) / ( PMTD )  ]



SELECT 
     SUM(total_payment) As MTD_Total_Amount_Received
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND
YEAR(issue_date) = 2021



SELECT 
     SUM(total_payment) As PMTD_Total_Amount_Received
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND
YEAR(issue_date) = 2021













/*
-----------------------------------------------
4. Avg interest rate : 
-----------------------------------------------
*/






-- Avg interest rate : 
SELECT 
     ROUND(AVG(int_rate) * 100  , 2) AS Avg_Interest_Rate
FROM bank_loan_data





-- MTD(Month-to-date) Avg interest rate :
SELECT 
     ROUND(AVG(int_rate) * 100  , 2) AS MTD_Avg_Interest_Rate
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND
YEAR(issue_date) = 2021





-- MoM(Month-On-Month) Avg interest rate :


--> [ MoM =  ( MTD - PMTD ) / ( PMTD )  ]

SELECT 
     ROUND(AVG(int_rate) * 100  , 2) AS MTD_Avg_Interest_Rate
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND
YEAR(issue_date) = 2021




SELECT 
     ROUND(AVG(int_rate) * 100  , 2) AS MTD_Avg_Interest_Rate
FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND
YEAR(issue_date) = 2021













/*
-----------------------------------------------
5.  Debt-to-Income Ratio (DTI)  : 
-----------------------------------------------
*/



-- Avg Debt-to-Income Ratio (DTI) :- 

SELECT 
     ROUND(AVG(dti) , 4) * 100 AS Avg_DTI 
FROM bank_loan_data






-- MTD(Month-to-date) Debt-to-Income Ratio (DTI) :- 

SELECT 
     ROUND(AVG(dti) , 4) * 100 AS MTD_Avg_DTI 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND
YEAR(issue_date) = 2021




-- PMTD(Month-to-date) Debt-to-Income Ratio (DTI) :- 


SELECT 
     ROUND(AVG(dti) , 4) * 100 AS MTD_Avg_DTI 
FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND
YEAR(issue_date) = 2021












---------------------------------------------------------------------------------------------------------------------------------------









-- ## Good Loan v Bad Loan KPI’s: 




/*
---------------------------------
1. Good Loans : 
---------------------------------
*/

SELECT   
     *
    -- loan_status 
FROM bank_loan_data




-- Good Loan Percentages :

SELECT 
      (COUNT (CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END)) * 100
      / 
      COUNT(id) AS Good_loan_percentage 
FROM bank_loan_data







-- Good Loan Applications :


SELECT    
      COUNT(id) As Good_Loan_Applications 
FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'





-- Good Loan Funded Amount :

SELECT    
      SUM(loan_amount) As Good_Loan_Funded_Amount
FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'







-- Good Loan Received Amount :

SELECT    
      SUM(total_payment) As Good_Loan_Received_Amount
FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'






















/*
---------------------------------
2. Bad Loans : 
---------------------------------
*/







SELECT   
     *
    -- loan_status 
FROM bank_loan_data





-- Bad Loan Percentages :


SELECT 
      (COUNT (CASE WHEN loan_status = 'Charged Off' THEN id END)  * 100.0)
      / 
      COUNT(id) AS Good_loan_percentage 
FROM bank_loan_data





-- Bad Loan Applications :

SELECT    
      COUNT(id) As Bad_Loan_Applications 
FROM bank_loan_data
WHERE loan_status = 'Charged Off'









-- Bad Loan Funded Amount :

SELECT    
      SUM(loan_amount) As Bad_Loan_Funded_Amount
FROM bank_loan_data
WHERE loan_status = 'Charged Off'







-- Bad Loan Received Amount :

SELECT    
      SUM(total_payment) As Good_Loan_Received_Amount
FROM bank_loan_data
WHERE loan_status = 'Charged Off'







---------------------------------------------------------------------------------------------------------------------------------------


-- ## Loan Status : 

SELECT * FROM bank_loan_data


-- Summary of the Loans 
SELECT 
     loan_status,
     COUNT(id) As LoanCount,
     SUM(total_payment) As Total_Amount_Recieved,
     SUM(loan_amount) As Total_Funded_Amount,
     SUM(int_rate * 100) As Interest_Rate,
     SUM(dti * 100) As DTI
FROM bank_loan_data
GROUP BY loan_status



-- Summary Of Loans With MTD 
SELECT 
     loan_status,
     SUM(total_payment) As MTD_Total_Amount_Recieved,
     SUM(loan_amount) As MTD_Total_Funded_Amount
FROM bank_loan_data
WHERE MONTH(issue_date) = 12
GROUP BY loan_status



