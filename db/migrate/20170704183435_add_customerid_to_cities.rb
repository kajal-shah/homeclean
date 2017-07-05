class AddCustomeridToCities < ActiveRecord::Migration
  def change
    add_reference :cities, :customer, index: true, foreign_key: true
  end
end
