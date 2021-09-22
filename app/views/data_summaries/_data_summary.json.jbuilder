json.extract! data_summary, :id, :data, :created_at, :updated_at
json.url data_summary_url(data_summary, format: :json)
