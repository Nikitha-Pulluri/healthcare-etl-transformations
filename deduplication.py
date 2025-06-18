df = df.sort_values('start_date', ascending=False)
df = df.drop_duplicates(subset='employee_id', keep='first')