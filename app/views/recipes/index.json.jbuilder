json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :title, :description, :preptime, :directions
  json.url recipe_url(recipe, format: :json)
end
