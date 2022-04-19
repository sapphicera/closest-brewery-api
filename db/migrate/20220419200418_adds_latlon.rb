class AddsLatlon < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :latlon, :string
  end
end
