class AddCityToCities < ActiveRecord::Migration
  def change
    add_column :cities, :city, :string
  end
end
