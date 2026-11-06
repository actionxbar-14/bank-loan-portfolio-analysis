




/*
=================================================
1. Monthly Trends by Issue Date :
=================================================
*/




SELECT  
     MONTH(issue_date) As Month_No,
     DATENAME(Month , issue_date) As Month_Name,
     COUNT(id) As Total_Loan_Applications,
     SUM(loan_amount) As Total_Funded_Amount,
     SUM(total_payment) As Total_Received_Amount
FROM bank_loan_data
GROUP BY DATENAME(Month , issue_date) , MONTH(issue_date)
ORDER BY MONTH(issue_date)










/*
=================================================
2. Regional Analysis by State :
=================================================
*/






SELECT  
     address_state,
     COUNT(id) As Total_Loan_Applications,
     SUM(loan_amount) As Total_Funded_Amount,
     SUM(total_payment) As Total_Received_Amount
FROM bank_loan_data
GROUP BY address_state
ORDER BY COUNT(id) DESC









/*
=================================================
3. Loan Term Analysis  :
=================================================
*/


SELECT  
     term,
     COUNT(id) As Total_Loan_Applications,
     SUM(loan_amount) As Total_Funded_Amount,
     SUM(total_payment) As Total_Received_Amount
FROM bank_loan_data
GROUP BY term
ORDER BY term










/*
=================================================
4. Employee Length Analysis :
=================================================
*/


SELECT * FROM bank_loan_data


SELECT  
     emp_length,
     COUNT(id) As Total_Loan_Applications,
     SUM(loan_amount) As Total_Funded_Amount,
     SUM(total_payment) As Total_Received_Amount
FROM bank_loan_data
GROUP BY emp_length
ORDER BY emp_length






/*
=================================================
5. Loan Purpose Breakdown  :
=================================================
*/




SELECT  
     purpose,
     COUNT(id) As Total_Loan_Applications,
     SUM(loan_amount) As Total_Funded_Amount,
     SUM(total_payment) As Total_Received_Amount
FROM bank_loan_data
GROUP BY purpose
ORDER BY COUNT(id) DESC






/*
=================================================
6. Home Ownership Analysis   :
=================================================
*/



SELECT  
     home_ownership,
     COUNT(id) As Total_Loan_Applications,
     SUM(loan_amount) As Total_Funded_Amount,
     SUM(total_payment) As Total_Received_Amount
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY COUNT(id)




