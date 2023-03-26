json.extract! hero, :id, :name, :super_name, :created_at, :updated_at
json.url hero_url(hero, format: :json)
