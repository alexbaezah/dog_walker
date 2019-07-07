class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.integer :frequencie_walk
      t.integer :walking_time

      t.timestamps
    end
  end
end
