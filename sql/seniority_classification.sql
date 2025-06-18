-- Add seniority bucket based on experience
SELECT *,
       CASE
           WHEN experience_years >= 10 THEN 'Senior'
           WHEN experience_years >= 5 THEN 'Mid'
           ELSE 'Junior'
       END AS seniority_level
FROM onboarding_schema.cleaned_resources;