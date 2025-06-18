def classify_level(years):
    if years >= 10:
        return 'Senior'
    elif years >= 5:
        return 'Mid'
    else:
        return 'Junior'

df['seniority_level'] = df['experience_years'].apply(classify_level)