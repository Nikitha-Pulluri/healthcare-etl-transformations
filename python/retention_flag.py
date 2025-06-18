from datetime import datetime, timedelta

threshold_date = datetime.now() - timedelta(days=730)
df['retention_flag'] = df['start_date'].apply(lambda x: 'Review' if x < threshold_date else 'Retain')