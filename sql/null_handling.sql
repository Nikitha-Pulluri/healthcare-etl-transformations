-- Replace nulls with default values
SELECT
    COALESCE(phone_number, 'N/A') AS phone_number,
    COALESCE(email, 'unknown@domain.com') AS email,
    COALESCE(location, 'Unknown') AS location
FROM onboarding_schema.cleaned_resources;