json.extract! course, :id, :class_room_id, :category, :name, :level, :start_age, :end_age, :wday, :start_at, :end_at, :max_size, :created_at, :updated_at
json.url course_url(course, format: :json)
