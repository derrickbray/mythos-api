json.extract! hero, :id, :name, :powers, :house, :spouse, :parents, :children, :description, :created_at, :updated_at
json.url hero_url(hero, format: :json)
