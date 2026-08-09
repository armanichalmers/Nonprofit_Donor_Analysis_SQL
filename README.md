# 💰 Nonprofit Donor & Fundraising Analysis

## 📌 Project Overview

This project analyzes donor and donation data for **Education for All**, a nonprofit organization seeking to strengthen its fundraising strategy.

The analysis focused on identifying patterns in donor behavior, donation frequency, donation value, geographic location, education, gender, and professional background to uncover opportunities for increasing donor engagement and fundraising performance.

Two datasets — `EFO_Donation_Data` and `EFO_Donor_Data` — were analyzed using **SQLite**, with **Tableau** used to visualize key findings.

---

## 🎯 Business Objectives

The analysis was designed to support three primary fundraising objectives:

- Increase the number of donors in the organization's database
- Increase donation frequency among existing donors
- Increase the overall value of donations

Additional analysis explored which donor characteristics and geographic segments were associated with higher donation activity.

---

## 🛠️ Tools & Skills

- **SQL / SQLite**
- **Tableau**
- Data Analysis
- Data Joining
- Aggregate Functions
- Data Visualization
- Root Cause Analysis
- Business Insights
- Strategic Recommendations

### SQL Techniques

- `SELECT`
- `SUM()`
- `COUNT()`
- `GROUP BY`
- `ORDER BY`
- `WHERE`
- `LEFT JOIN`
- NULL value analysis
- Filtering and aggregation

---

## 🗂️ Data

The analysis used two datasets:

### EFO_Donation_Data

Contained donation-related information including:

- Donation amount
- Donation frequency

### EFO_Donor_Data

Contained donor characteristics including:

- Gender
- State
- Job field
- University education
- Additional demographic attributes

The datasets were joined using SQL to analyze relationships between donor characteristics and donation behavior.

---

## 🔎 Analysis

SQL queries were developed to investigate several business questions:

- What is the total value of donations?
- How does donation activity differ by gender?
- Which states generate the highest and lowest donation totals?
- How does donation frequency vary among donors?
- Which professional fields contribute the greatest donation value?
- How does university education relate to donation activity?
- Which one-time donors may represent opportunities for re-engagement?

---

## 💻 SQL Analysis

SQL was used to aggregate donation activity, compare geographic performance, segment donor groups, and join donor characteristics with donation behavior.

### 1. Donation Summary by Gender

Donation totals were grouped by gender to compare contribution value across donor groups.

**Skills demonstrated:** `SUM()`, `GROUP BY`, `ORDER BY`

### 2. Highest & Lowest Donation States

Donation values were aggregated by state to identify the five geographic areas generating the highest and lowest total contributions.

**Skills demonstrated:** `SUM()`, `GROUP BY`, `ORDER BY`, `LIMIT`

### 3. Donation Frequency by Gender & Job Field

Donor and donation data were joined to analyze how donation frequency varied across gender and professional segments. The same query structure was used to evaluate one-time, weekly, monthly, and yearly donors.

**Skills demonstrated:** `LEFT JOIN`, `WHERE`, `COUNT()`, `GROUP BY`, `ORDER BY`

### 4. Donors Without University Education

Donor and donation records were joined to identify contributors with missing university information and evaluate their donation activity.

**Skills demonstrated:** `LEFT JOIN`, `WHERE`, `IS NULL`, `COUNT()`, `GROUP BY`

### 5. High-Value Donors Without University Education

The analysis was further filtered to identify donors without university education records who contributed **$400 or more**.

**Skills demonstrated:** `LEFT JOIN`, `WHERE`, `IS NULL`, conditional filtering, `ORDER BY`

📁 **[View the Complete SQL Analysis](donor_analysis.sql)**

---

## 📊 Key Findings

The analysis identified several notable patterns:

- Total donations analyzed were **$249,085**.
- Male donors contributed **$127,628**, compared with **$121,457** from female donors, despite there being more female donors in the dataset.
- The five states with the highest donation totals were **California, Texas, Florida, New York, and Virginia**.
- A large portion of donors had donated only **once**, highlighting an opportunity for donor re-engagement.
- **748 donors** had a university education and contributed a combined **$187,456**.
- **252 donors** did not have a university education and contributed **$61,629**.
- Female donors working in **Engineering** generated the highest donation value among female professional groups.
- Male donors working in **Product Management** generated the highest donation value among male professional groups.

---

## 💡 Recommendations

Based on the analysis, several opportunities were identified to strengthen fundraising performance:

- Re-engage **one-time donors** and encourage repeat donations.
- Prioritize outreach to donor segments associated with stronger donation activity.
- Continue engagement in high-performing states while expanding awareness and acquisition efforts in lower-performing regions.
- Improve donor data collection by focusing on attributes that are relevant to fundraising analysis and eliminating unnecessary fields.
- Use donor segmentation to create more targeted fundraising and engagement strategies.

---

## 📈 Tableau Visualizations

Tableau was used alongside SQL to visualize donor behavior and support the analysis.

Selected Tableau visualizations can be viewed in the full project report below.

Visualizations included:

- Donation frequency
- Donor count by gender
- Donation value by gender
- Donations by state
- Donation value by gender and job field
- Donation activity across professional segments

These visualizations served as a supporting component of the analysis, while **SQL was the primary tool used to query, aggregate, join, and investigate the donor data**.

Selected Tableau visualizations can be viewed in the full project report below.<!-- Add Tableau dashboard link here if available -->

---

## 📄 Full Project Report

The original project report contains the SQL queries, Tableau visualizations, detailed findings, and recommendations used throughout the analysis.

📄 **[View the Full Donor Analysis Report](https://github.com/armanichalmers/Nonprofit_Donor_Analysis_SQL/blob/main/EntryLevel_Data%20Analyst%202_%20Portfolio_SQL(1).pdf)**

---

## 📚 Project Background

This project was originally completed as part of the **EntryLevel Data Analyst program** and has been organized here as a portfolio case study demonstrating SQL analysis, data visualization, and business-focused problem solving.
