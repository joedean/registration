json.extract! teacher, :id, :company_id, :first_name, :last_name, :mobile_phone, :email, :start_date, :end_date, :birth_date, :active, :contractor, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
