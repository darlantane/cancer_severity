SELECT 
  -- Correlation between Smoking and Severity
  (AVG(Smoking * Target_Severity_Score) - AVG(Smoking) * AVG(Target_Severity_Score)) / 
    (STDDEV(Smoking) * STDDEV(Target_Severity_Score)) AS corr_smoking,

  -- Genetic risk
  (AVG(Genetic_Risk * Target_Severity_Score) - AVG(Genetic_Risk) * AVG(Target_Severity_Score)) / 
    (STDDEV(Genetic_Risk) * STDDEV(Target_Severity_Score)) AS corr_genetic,

  -- Air pollution
  (AVG(Air_Pollution * Target_Severity_Score) - AVG(Air_Pollution) * AVG(Target_Severity_Score)) / 
    (STDDEV(Air_Pollution) * STDDEV(Target_Severity_Score)) AS corr_pollution,

  -- Alcohol consumption
  (AVG(Alcohol_Use * Target_Severity_Score) - AVG(Alcohol_Use) * AVG(Target_Severity_Score)) / 
    (STDDEV(Alcohol_Use) * STDDEV(Target_Severity_Score)) AS corr_alcohol,

  -- Obesity levels
  (AVG(Obesity_Level * Target_Severity_Score) - AVG(Obesity_Level) * AVG(Target_Severity_Score)) / 
    (STDDEV(Obesity_Level) * STDDEV(Target_Severity_Score)) AS corr_obesity,

  -- Age (surprisingly not significant)
  (AVG(Age * Target_Severity_Score) - AVG(Age) * AVG(Target_Severity_Score)) / 
    (STDDEV(Age) * STDDEV(Target_Severity_Score)) AS corr_age
FROM global_cancer_patients;