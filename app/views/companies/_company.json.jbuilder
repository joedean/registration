json.extract! company, :id, :name, :phone, :email, :web_site, :active, :created_at, :updated_at
json.url company_url(company, format: :json)
