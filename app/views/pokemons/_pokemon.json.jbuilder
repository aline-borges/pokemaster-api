json.extract! pokemon, :id, :photo, :name, :pokemonType, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
