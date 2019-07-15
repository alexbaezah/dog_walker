class AddNameAgeToDogWalking < ActiveRecord::Migration[5.2]
  def change
    add_column :dog_walkings, :name, :string
    add_column :dog_walkings, :age, :date
  end
end
