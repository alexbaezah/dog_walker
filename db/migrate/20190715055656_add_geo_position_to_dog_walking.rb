class AddGeoPositionToDogWalking < ActiveRecord::Migration[5.2]
  def change
    add_column :dog_walkings, :latitude, :float
    add_column :dog_walkings, :longitude, :float
    add_column :dog_walkings, :address, :string
  end
end
