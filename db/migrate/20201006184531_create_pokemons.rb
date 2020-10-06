class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :photo
      t.string :name
      t.string :pokemonType

      t.timestamps
    end
  end
end
