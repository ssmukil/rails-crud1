json.extract! student, :id, :name, :class, :school_id, :created_at, :updated_at
json.url student_url(student, format: :json)