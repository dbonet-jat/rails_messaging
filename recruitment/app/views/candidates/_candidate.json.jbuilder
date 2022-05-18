json.extract! candidate, :id, :fullname, :email, :hired, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)
