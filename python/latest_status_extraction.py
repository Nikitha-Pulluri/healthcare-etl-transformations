def get_latest_status(log):
    if log:
        return sorted(log, key=lambda x: x['date'], reverse=True)[0]['status']
    return 'unknown'

df['latest_status'] = df['status_log'].apply(get_latest_status)