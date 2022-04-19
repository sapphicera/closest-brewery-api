class ChangeLocationLatlonForLatitudeAndLongitude < ActiveRecord::Migration[7.0]
  def change
    remove_column :locations, :latlon, :string
    add_column :locations, :latitude, :float
    add_column :locations, :longitude, :float
  end
end
