json.extract! task, :id, :employee, :email, :task, :created_at, :updated_at
json.url task_url(task, format: :json)
