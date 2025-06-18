-- Load only new resources not present in target_table
CREATE OR REPLACE TABLE onboarding_schema.new_resources AS
SELECT * FROM onboarding_schema.staging_resources sr
WHERE NOT EXISTS (
    SELECT 1 FROM onboarding_schema.target_table tr
    WHERE sr.employee_id = tr.employee_id
);