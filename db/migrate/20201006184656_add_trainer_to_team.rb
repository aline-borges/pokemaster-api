class AddTrainerToTeam < ActiveRecord::Migration[6.0]
  def change
    add_reference :teams, :trainer, null: false, foreign_key: true
  end
end
