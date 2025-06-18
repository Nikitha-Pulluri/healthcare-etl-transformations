-- Trim and lower case for emails
SELECT
    LOWER(TRIM(email)) AS standardized_email
FROM onboarding_schema.cleaned_resources;