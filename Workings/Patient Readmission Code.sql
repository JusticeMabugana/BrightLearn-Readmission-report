SELECT * FROM `workspace`.`default`.`patient_readmission_raw_data` limit 10;

---EDA
---null values
select count(*) from patient_readmission_raw_data where `Patient ID` is null;
select count(*) from patient_readmission_raw_data where Age is null;
select count(*) from patient_readmission_raw_data where Gender is null;
select count(*) from patient_readmission_raw_data where `Admission Type` is null;
select count(*) from patient_readmission_raw_data where `Length of Stay` is null;
select count(*) from patient_readmission_raw_data where `Number of Diagnoses` is null;
select count(*) from patient_readmission_raw_data where `Blood Pressure` is null;
select count(*) from patient_readmission_raw_data where `Blood Sugar Levels` is null;
select count(*) from patient_readmission_raw_data where `Previous Admissions` is null;
select count(*) from patient_readmission_raw_data where `Readmission` is null;

---age range (18-89)
select min(age), max(age) from patient_readmission_raw_data;

---age buckets
select age, 
  case
    when age between 18 and 35 then '1. Young Adults (18-35)'
    when age between 36 and 45 then '2. Adults (36-34)'
    when age between 46 and 55 then '3. Middle Aged (46-55)'
    when age between 56 and 65 then '4. Senior Adults (56-65)'
    when age between 66 and 75 then '5. Pensioners (66-75)'
  else '6. Elderly (76+)'
  end as age_bucket
from patient_readmission_raw_data;

--Gender classification
select distinct (gender)
from patient_readmission_raw_data;

---length of stay range (1-29 days)
select min(`Length of Stay`), max(`Length of Stay`)
from patient_readmission_raw_data;

---length of stay buckets
select `Length of Stay`, 
  case
    when `Length of Stay` between 1 and 7 then '1. Short (1-7)'
    when `Length of Stay` between 8 and 14 then '2. Medium (8-14)'
  else '3. Long Stay (15+)'
end as Stay_Bucket
from patient_readmission_raw_data;

---admission type
select distinct (`Admission Type`)
from patient_readmission_raw_data;

---blood pressure range (60-179)
select min(`Blood Pressure`), max(`Blood Pressure`)
from patient_readmission_raw_data;

---blood pressure buckets
select `Blood Pressure`, 
  case
    when `Blood Pressure` < 120 then '1. Normal (<120)'
    when `Blood Pressure` between 120 and 129 then '2. Elevated (120-129)'
    when `Blood Pressure` between 130 and 139 then '3. Stage 1 Hypertension (130-139)'
  else '4. Stage 2 Hypertension (140+)'
end as BP_Bucket
from patient_readmission_raw_data;

---blood sugar levels range (51-199)
select min(`Blood Sugar Levels`), max(`Blood Sugar Levels`)
from patient_readmission_raw_data;

---blood sugar levels buckets
select `Blood Sugar Levels`, 
  case
    when `Blood Sugar Levels` < 100 then '1. Normal (<100)'
    when `Blood Sugar Levels` between 100 and 125 then '2. Prediabetes (100-125)'
  else '3. Diabetes (126+)'
end as BS_Bucket
from patient_readmission_raw_data;

---previous admissions range (0-4)
select min(`Previous Admissions`), max(`Previous Admissions`)
from patient_readmission_raw_data;

---returning or new patients
select `previous admissions`,
  case
    when `Previous Admissions` = 0 then 'New Patient'
    else 'Returning Patient'
end as NewPatient
from patient_readmission_raw_data;

---final code
Select `Patient ID`, 
        Age, 
        case
          when age between 18 and 35 then '1. Young Adults (18-35)'
          when age between 36 and 45 then '2. Adults (36-34)'
          when age between 46 and 55 then '3. Middle Aged (46-55)'
          when age between 56 and 65 then '4. Senior Adults (56-65)'
          when age between 66 and 75 then '5. Pensioners (66-75)'
        else '6. Elderly (76+)'
  end as age_bucket,
        Gender,
        `Admission Type`,
        `Length of Stay`,
        case
          when `Length of Stay` between 1 and 7 then '1. Short (1-7)'
          when `Length of Stay` between 8 and 14 then '2. Medium (8-14)'
        else '3. Long Stay (15+)'
  end as Stay_Bucket,
        `Number of Diagnoses`,
        `Blood Pressure`,
        case
          when `Blood Pressure` < 120 then '1. Normal (<120)'
          when `Blood Pressure` between 120 and 129 then '2. Elevated (120-129)'
          when `Blood Pressure` between 130 and 139 then '3. Stage 1 Hypertension (130-139)'
        else '4. Stage 2 Hypertension (140+)'
  end as BP_Bucket,
        `Blood Sugar Levels`,
        case
          when `Blood Sugar Levels` < 100 then '1. Normal (<100)'
          when `Blood Sugar Levels` between 100 and 125 then '2. Prediabetes (100-125)'
        else '3. Diabetes (126+)'
  end as BS_Bucket,
        `Previous Admissions`,
          case
            when `Previous Admissions` = 0 then 'New Patient'
            else 'Returning Patient'
            end as NewPatients,
        `Readmission`
from patient_readmission_raw_data;
