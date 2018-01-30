json.extract! course, :id, :name, :description, :picture, :created_at, :updated_at
json.url course_url(course, format: :json)
