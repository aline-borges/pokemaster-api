class Team < ApplicationRecord
  belongs_to :trainer

  has_many :pokemon_teams
  has_many :pokemons, through: :pokemon_teams
end
