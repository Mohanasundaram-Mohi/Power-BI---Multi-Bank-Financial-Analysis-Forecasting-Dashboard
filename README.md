## 📌 Project Overview

This project presents an end-to-end **financial analytics solution** for multiple global banks — **JPMorgan Chase, HSBC, and Commonwealth Bank (CBA)**.

The solution integrates data from multiple sources, performs transformation using **Alteryx**, and delivers insights through an interactive **Power BI dashboard**, including **future revenue forecasting (in USD)**.

---

## 🚀 Live Power BI Report

👉 https://app.powerbi.com/groups/me/reports/d2ff7d2b-c868-4c60-8df2-330587508ca7/c21bddaca283494c40e2?experience=power-bi

---

## 📊 Key Features

* 📈 Revenue trend analysis (2015–2024)
* 🔮 Forecasting future revenue (3-year prediction)
* 🏦 Multi-bank comparison dashboard
* 📊 KPI tracking (Revenue, Profit, Margin, ROE)
* 💰 Financial ratio analysis
* 📉 Assets vs Loans insights
* 🎯 Interactive slicers & drill-through navigation
* 🔘 Clickable bank navigation using logos

---

## 🗂️ Data Sources

| Bank     | Source Type | Storage     |
| -------- | ----------- | ----------- |
| JPMorgan | Excel       | Local File  |
| HSBC     | PostgreSQL  | Database    |
| CBA      | SharePoint  | Online List |

---

## 🔗 Data Integration Process

### 1. JPMorgan (Excel)

* Connected directly using Power BI Excel connector
* Cleaned numeric columns (removed commas)

### 2. HSBC (PostgreSQL)

* Connected via PostgreSQL connector
* Server: localhost:5432
* Imported financial table into Power BI

### 3. CBA (SharePoint)

* Connected using SharePoint Online List
* URL used:

```
https://mmitacnz-my.sharepoint.com/personal/199595_365kit_co
```

---

## 🔄 Data Transformation (Alteryx + Power BI)

* Combined all three datasets
* Standardized column names
* Converted text → numeric values
* Ensured consistent schema across banks

---

## 🧠 Data Modeling (Star Schema)

### 📅 Date Table (DAX)

```DAX
Date_Table = 
ADDCOLUMNS(
    CALENDAR(DATE(2000,1,1), DATE(2030,12,31)),
    "Year", YEAR([Date])
)
```

### 🔗 Relationship

* Date_Table[Year] → Bank_Financials[Year]
* One-to-Many relationship

---

## 📐 DAX Measures

### 💰 Total Revenue

```DAX
Total Revenue = SUM(Bank_Financials[Revenue])
```

### 💵 Total Profit

```DAX
Total Profit = SUM(Bank_Financials[Net Income])
```

### 📊 Profit Margin

```DAX
Profit Margin = DIVIDE([Total Profit], [Total Revenue])
```

### 📈 YoY Growth

```DAX
YoY Growth = 
DIVIDE(
    [Total Revenue] - CALCULATE([Total Revenue], SAMEPERIODLASTYEAR(Date_Table[Date])),
    CALCULATE([Total Revenue], SAMEPERIODLASTYEAR(Date_Table[Date]))
)
```

### ⚙️ Cost to Income Ratio

```DAX
Cost Ratio = DIVIDE(SUM(Bank_Financials[Operating Expenses]), [Total Revenue])
```

---

## 📊 Dashboard Pages

### 🟦 Page 1: JPMorgan Dashboard

* KPI Cards (Revenue, Profit, Margin)
* Revenue Trend + Forecast
* Assets vs Loans
* Revenue vs Expenses (Donut)
* Financial Table

---

### 🟥 Page 2: HSBC Dashboard

* Same structure with HSBC data
* Red theme for branding consistency

---

### 🟩 Page 3: CBA Dashboard

* Green theme
* Focus on profitability (higher margin)

---

### 🟨 Page 4: Comparison Dashboard

* Multi-bank revenue comparison
* Scatter plot (Assets vs Revenue vs Profit)
* Bar chart (Revenue by Bank)
* Financial summary table
* Navigation using clickable logos

---

## 🔮 Forecasting

* Applied on line charts using Power BI Analytics
* Forecast Length: 3 Years
* Confidence Interval: 95%
* Seasonality: Auto

### 💡 Insight:

Forecasted revenues are displayed in **USD**, enabling future financial trend analysis and decision-making.

---

## 🎯 Key Insights

* JPMorgan shows highest revenue growth trend
* HSBC maintains stable growth with moderate margins
* CBA shows strong profitability (higher profit margin)
* Assets vs Loans indicates liquidity strength across banks

---

## 🎨 UI/UX Enhancements

* Bank-specific color themes
* Interactive slicers (Year, Bank)
* Tooltip enhancements
* Navigation using clickable logos
* Clean layout with consistent alignment

---

## 🛠️ Tools & Technologies

* Power BI
* Alteryx
* PostgreSQL
* SharePoint Online
* Excel
* DAX

---

## 📌 Conclusion

This project demonstrates:

* Multi-source data integration
* Data modeling (Star Schema)
* Advanced DAX calculations
* Forecasting and predictive analytics
* Interactive dashboard design

---

![Multi_Bank_analysis_page-0001](https://github.com/user-attachments/assets/446c7490-d3f3-4d1e-88e4-5036f49628c0) 
![Multi_Bank_analysis_page-0002](https://github.com/user-attachments/assets/aa87577c-4db9-4b6f-bc1e-29300f477d24) 
![Multi_Bank_analysis_page-0003](https://github.com/user-attachments/assets/f840cabd-fe4e-4e8e-ae8d-31b7aa52e6dd) 
![Multi_Bank_analysis_page-0004](https://github.com/user-attachments/assets/498df9a0-fd3b-4379-86c7-d0c7272ce15b) 
<img width="884" height="337" alt="Sharepoint" src="https://github.com/user-attachments/assets/81143fdd-6206-4622-8058-9a69db52052e" />
<img width="947" height="399" alt="Workspace" src="https://github.com/user-attachments/assets/0989bb67-12cd-4dd4-868c-dc182125c03c" /> 


## 🙌 Author

**Mohan** 
Power BI | Alteryx | Data Analytics Enthusiast 🚀

---
