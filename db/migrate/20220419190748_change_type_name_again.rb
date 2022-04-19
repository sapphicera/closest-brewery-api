class ChangeTypeNameAgain < ActiveRecord::Migration[7.0]
  def change
    remove_column :locations, :type, :string
    add_column :locations, :bar_type, :string
  end
end
