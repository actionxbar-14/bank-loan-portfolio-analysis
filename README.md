# Bank Loan Portfolio Analysis

**An End-to-End Banking Analytics Project | SQL | Power BI**

## 📊 Project Overview

This project focuses on analysing a bank's loan portfolio to evaluate lending performance, loan distribution, repayment collections, and overall portfolio quality.

The objective is to transform raw loan application data into meaningful business insights that help banking stakeholders understand lending trends, monitor loan performance, evaluate borrower characteristics, and identify potential credit portfolio concerns.

An interactive Power BI dashboard provides a consolidated view of key lending metrics and supports data-driven business decision-making.

---

## 🎯 Business Problem

Banks process a large volume of loan applications across different borrower segments, loan purposes, employment categories, and geographical locations.

Monitoring loan performance through raw datasets makes it difficult for management to identify lending trends, evaluate repayment performance, and assess portfolio quality.

The business requires a centralized analytical solution to:

- Monitor loan application volumes and lending activities.
- Track total loan amounts funded and amounts received.
- Evaluate loan repayment status and portfolio quality.
- Identify patterns in borrower demographics and loan characteristics.
- Compare lending performance across different periods.
- Monitor financial indicators such as interest rates and Debt-to-Income (DTI) ratios.

## 🎯 Project Objectives

1. **Loan Performance Analysis:** Evaluate loan applications, funded amounts, and repayment collections.
2. **Portfolio Quality Assessment:** Analyse good loans and bad loans based on loan status.
3. **Borrower Segmentation:** Understand loan distribution across employment, home ownership, loan purpose, and geographical segments.
4. **Trend Analysis:** Identify monthly and year-to-date changes in lending activities.
5. **Financial Monitoring:** Evaluate average interest rates and Debt-to-Income ratios.
6. **Business Intelligence:** Develop an interactive dashboard for monitoring lending performance and portfolio health.

---

## 📈 Key Performance Indicators (KPIs)

| KPI | Business Definition |
|---|---|
| Total Loan Applications | Total number of loan applications received. |
| Total Funded Amount | Total amount disbursed by the bank. |
| Total Amount Received | Total repayments collected from borrowers. |
| Average Interest Rate | Average interest rate charged on loans. |
| Average DTI | Average Debt-to-Income ratio of borrowers. |
| Good Loan Applications | Applications classified as Fully Paid or Current. |
| Bad Loan Applications | Applications classified as Charged Off. |
| Good Loan Funded Amount | Total funded amount associated with good loans. |
| Bad Loan Funded Amount | Total funded amount associated with bad loans. |
| Good Loan Received Amount | Total amount received from good loans. |
| Bad Loan Received Amount | Total amount received from bad loans. |

*Note: Good and bad loan classifications follow the business definitions used in this project.*

---

## 📊 Dashboard Overview

The Power BI dashboard consists of three analytical views designed to provide insights into the bank's lending operations.

### 01. Loan Summary Dashboard

Provides a consolidated overview of the bank's lending performance and portfolio quality.

**Key Analysis:**
- Total Loan Applications.
- Total Funded Amount.
- Total Amount Received.
- Average Interest Rate.
- Average DTI.
- Good Loan vs Bad Loan performance.
- Monthly lending trends.
- Loan status distribution.


 

### 02. Loan Overview Dashboard

Provides deeper insights into loan distribution and borrower characteristics.

**Key Analysis:**
- Loan applications by month.
- Loan distribution by state.
- Loan applications by term.
- Loan applications by employment length.
- Loan applications by loan purpose.
- Loan applications by home ownership.



### 03. Loan Details Dashboard

Provides a detailed view of individual loan records to support granular analysis and investigation.

**Key Analysis:**
- Individual loan information.
- Borrower details.
- Loan amount and funded amount.
- Interest rate and DTI.
- Loan status and repayment information.



---

## 📉 Analytical Dimensions

The project explores loan performance across the following dimensions:

- **Loan Status:** Fully Paid, Current, Charged Off.
- **Loan Purpose:** Debt Consolidation, Credit Card, Home Improvement, and other purposes.
- **Employment Length:** Borrower employment experience.
- **Home Ownership:** Borrower housing status.
- **Geography:** Loan distribution across states.
- **Loan Term:** Short-term and long-term lending.
- **Time Period:** Monthly and year-to-date performance.

---

## 🧮 Tools & Technologies

| Technology | Purpose |
|------------|---------|
| Microsoft Power BI | Interactive dashboard development and visualization |
| Power Query | Data cleaning and transformation |
| DAX | KPI calculations and analytical measures |
| Microsoft Excel / CSV | Dataset storage and initial data exploration |

---

## 🗂️ Project Structure

```text
Bank_Loan_Portfolio_Analysis/
│
├── Dashboard/
│   └── Bank_Loan_Analysis.pbix
|
├── Dataset/
│   └── Domain_Knowledge.docx
│   └── financial_loan_data_excel.xlsx
|   └── financial_loan.csv
|   └── loan_Analysis_Queries.csv
|   └── Terminologies_description_of_data.csv
|
├── scripts/
│   ├── Insights_OverviewDashboard.sql
│   ├── Insights_SummaryDashboard.sql
│   
│
└── README.md
```

---

## 💹 Expected Business Outcomes

This analysis aims to help banking stakeholders:

- Understand overall lending demand and loan disbursement patterns.
- Monitor repayment collections against funded amounts.
- Evaluate portfolio composition through loan status analysis.
- Identify borrower segments contributing to lending activities.
- Track changes in loan applications and financial KPIs over time.
- Support more informed lending and portfolio monitoring decisions.

---

## 👨‍💻 Author

**Anubhav Pathak**

Data Analyst | Analytics Engineer | 

- GitHub: [actionxbar-14](https://github.com/actionxbar-14)
- Linkdin : [Profile](https://www.linkedin.com/in/anubhav-pathak-81a229334/)

---

*This project is part of my Data Analytics portfolio, focusing on practical business problems and data-driven decision-making in the Banking and Financial Services domain.*
