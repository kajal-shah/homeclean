class AddFirstnameToCleaners < ActiveRecord::Migration
  def change
    add_column :cleaners, :first_name, :string
  end
end
