# Employee-Mental-Health-Analysis
Data Analysis Project Showcasing Employee Mental Health Analysis Using Python and SQL 

## ✨ 1. Overview

This project is an in-depth exploratory data analysis (EDA) of employee mental health data. The primary goal is to **uncover key trends, identify risk factors, and provide data-driven insights** that can inform workplace mental health strategies.

  * **Skills Demonstrated:** Data Wrangling (Pandas), Exploratory Data Analysis (EDA), Data Visualization (Matplotlib/Seaborn), Database Querying (SQL/MySQL), and Business Reporting.
  * **Key Insight Examples:** Analyzing the relationship between remote work and mental health, identifying demographic groups most affected by stress, and determining the correlation between company size and wellness support.

## 💾 2. Dataset

  * **Name:** Employee Mental Health Survey Data
  * **Source:** (Replace with actual source, e.g., Kaggle, Internal Mock Data, etc.)
  * **Description:** The dataset contains $\approx 2,700$ anonymous survey responses covering various factors such as age, gender, company size, remote work status, existing mental health conditions, and personal opinions on employer support.

## 🛠️ 3. Tools and Technologies

| Category | Tool/Library | Purpose |
| :--- | :--- | :--- |
| **Programming** | Python 3.x | Core analysis and scripting. |
| **Data Manipulation** | Pandas | Data loading, cleaning, and transformation. |
| **Visualization** | Matplotlib, Seaborn | Creating clear, impactful charts and graphs for EDA. |
| **Database** | MySQL Workbench | Loading processed data and running complex joins/aggregate queries. |
| **Reporting** | (Specify tool, e.g., Microsoft PowerPoint/PDF) | Final presentation of findings and recommendations. |

## 🚀 4. Project Steps & Analysis Highlights

This section outlines the workflow and highlights the most important analytical steps.

### A. Data Loading & Cleaning (Python/Pandas)

  * Loaded the `.csv` file into a Pandas DataFrame.
  * Handled missing values using techniques like imputation (for numerical data) and mode replacement (for categorical data).
  * Standardized text entries (e.g., converting 'Yes/No' to binary flags).

### B. Exploratory Data Analysis (EDA)

  * **Distribution Analysis:** Examined the distribution of key variables (e.g., age, time with company) and the primary mental health concern.
  * **Correlation & Trends:** Investigated correlations between company resources (e.g., 'Wellness Program availability') and self-reported mental health status.
  * **Visualization:** Created heatmaps, bar charts, and box plots to visualize differences in mental health impact across demographics (e.g., gender, country).

### C. Advanced SQL Querying (MySQL)

  * The cleaned and structured dataset was loaded into a MySQL database.
  * Executed **complex aggregate queries** to calculate key performance indicators (KPIs) like:
      * `AVG()` frequency of treatment by company size.
      * `JOIN`ing tables (if applicable) to link survey data with potential external factors.
      * `CASE` statements for creating high/low risk groups.

### D. Final Reporting & Recommendations

  * Synthesized the most critical findings from the EDA and SQL queries into a final, actionable report.
  * Provided specific recommendations to management, such as focusing on support for remote employees or improving anti-stigma campaigns.

## 💻 5. How to Run the Project

Follow these steps to replicate the environment and analysis:

1.  **Clone the Repository:**
    ```bash
    git clone [Your Repository URL Here]
    cd employee-mental-health-analysis
    ```
2.  **Set up Python Environment:**
    Install the required libraries using the provided `requirements.txt` file:
    ```bash
    pip install -r requirements.txt
    ```
3.  **Run the Analysis Script:**
    Execute the main analysis notebook or script:
    ```bash
    jupyter notebook analysis_notebook.ipynb  # or python main_script.py
    ```
4.  **Database Access (Optional):**
      * The processed data is available as `cleaned_data.csv`.
      * To run the SQL queries, import this CSV into a MySQL database and execute the queries found in `sql_queries/analysis.sql`.

-----

This structure is highly effective because:

  * The **Overview** is concise and highlights **business value**.
  * **Tools** are explicitly listed, serving as a checklist for the recruiter.
  * **Project Steps** focus on the *action* you took (e.g., "Handled missing values," "Executed complex aggregate queries"), which shows skill mastery.

Would you like me to draft a more detailed `requirements.txt` file based on the tools you listed?
