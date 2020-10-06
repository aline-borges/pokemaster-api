class CreateTrainers < ActiveRecord::Migration[6.0]
  def change
    create_table :trainers do |t|
      t.string :photo
      t.string :name
      t.integer :age
      t.string :sex

      t.timestamps
    end
  end
end
