-- Onboarding stats per region and department
SELECT region, department, COUNT(*) AS onboarded_count
FROM onboarding_schema.cleaned_resources
GROUP BY region, department
ORDER BY region, onboarded_count DESC;