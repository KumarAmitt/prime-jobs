json.extract! job, :id, :title, :position, :location, :created_at, :updated_at
json.url job_url(job, format: :json)
