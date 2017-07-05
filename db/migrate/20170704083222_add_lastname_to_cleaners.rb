class AddLastnameToCleaners < ActiveRecord::Migration
  def change
    add_column :cleaners, :last_name, :string
  end
end
