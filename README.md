# BrightLearn-Readmission-report 🏥

## Introduction

* This presentation is based on a dataset that contains information about 3000 hospital patients, including their:  demographics, admission details, clinical measurement and whether they were readmitted after discharge.

### Column-by-Column Summary

* Patient ID - A unique identifier for each patient record. Used to distinguish one patient from another.
  
* Age	- The patient’s age in years at the time of admission.
  
* Gender	- The biological sex of the patient (e.g., Male or Female).
  
* Admission Type	- The nature of the hospital admission — for example, Elective (planned) or Emergency (unplanned or urgent).
  
* Length of Stay	- The number of days the patient remained in the hospital during that admission.
  
* Number of Diagnoses - The count of distinct medical diagnoses recorded for the patient during the hospital stay.
  
* Blood Pressure	- The patient’s measured blood pressure (likely systolic, though this should be confirmed).
  
* Blood Sugar Levels	- The patient’s blood sugar (glucose) measurement, typically in mg/dL. Indicates diabetic or metabolic status.
  
* Previous Admissions	- The number of times the patient was admitted to the hospital prior to this current stay.
  
* Readmission	- Whether the patient was readmitted to the hospital after discharge (Yes or No). This is often used as a target variable in predictive models.
  

  
## **🔎Findings**
* A significant portion of our patients are young adults, representing just over 25% of our total patient base.

* Returning Patients - A significant portion of our patients are readmitted, comprising 71% of our overall patient base.

* 29.5% of male patients are likely to be readmitted, based on past results .

* Females are slightly less likely to be readmitted, as 28% of females were readmitted in the past

* Hospital stays - Patients that were readmitted in comparison to those that weren’t exhibit similar patterns concerning the  lengths of their hospital stays.
  

## **💹Recommendations**

* Low Public Awareness - Many people are diagnosed at later stages of their blood related diseases.
Solution: Use digital outreach and public events to spread information and awareness with regards to blood related diseases.

* Limited Budget - Hospitals may not have enough funds for large awareness campaigns.
Solution: Use affordable tools like websites, posters, and health talks.

## Project files

* [Case study](https://github.com/JusticeMabugana/BrightLearn-Readmission-report/blob/main/1.Project%20Description%20%26%20Raw%20Data/Patient%20Readmission%20Case%20Study.pdf) - This file contains the Case Study

* [Dataset](https://github.com/JusticeMabugana/BrightLearn-Readmission-report/blob/main/1.Project%20Description%20%26%20Raw%20Data/Patient_Readmission%20-%20Raw%20Data.csv) - This file contains the dataset used in this analysis.

* [SQL Code](https://github.com/JusticeMabugana/BrightLearn-Readmission-report/blob/main/3.Data%20Processing/Patient%20Readmission%20Code.sql) - This is the script used in the analysis.

* This is a snippet of the Dashboard generated using the provided data
  ![Visuals](https://github.com/JusticeMabugana/BrightLearn-Readmission-report/blob/main/4.Project%20Presentation/Patient%20Readmissions%20dashboard.png)

  ## Tools used
* Databricks (SQL)
* Google Looker for dashboards
* Canva for presentation
* Miro for planning


## **🔗Links**
- Link to Interactive Dashboard: [Interactive Dashboard](https://lookerstudio.google.com/reporting/a2c64d75-87ee-4d81-8fe8-8eeb6fbeb717)
 
- Link to Canva presentation: [Presentation](https://www.canva.com/design/DAG3eADcAUk/Zey7JdIiON2SQvapaLI_dA/edit?utm_content=DAG3eADcAUk&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)
