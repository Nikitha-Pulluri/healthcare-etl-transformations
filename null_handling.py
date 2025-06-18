df['phone_number'].fillna('N/A', inplace=True)
df['email'].fillna('unknown@domain.com', inplace=True)
df['location'].fillna('Unknown', inplace=True)