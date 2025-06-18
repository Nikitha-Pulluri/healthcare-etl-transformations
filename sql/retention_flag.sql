-- Add a retention flag based on start_date
ALTER TABLE onboarding_schema.cleaned_resources ADD COLUMN retention_flag STRING;

UPDATE onboarding_schema.cleaned_resources
SET retention_flag = CASE
    WHEN start_date < DATEADD('year', -2, CURRENT_DATE) THEN 'Review'
    ELSE 'Retain'
END;