-- Remove duplicate employee entries based on employee_id, keep latest start_date
CREATE OR REPLACE TABLE onboarding_schema.deduplicated_resources AS
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY employee_id ORDER BY start_date DESC) AS rn
    FROM onboarding_schema.cleaned_resources
)
WHERE rn = 1;