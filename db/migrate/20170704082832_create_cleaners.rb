class CreateCleaners < ActiveRecord::Migration
  def change
    create_table :cleaners do |t|

      t.timestamps null: false
    end
  end
end


# def up
#     create_table :cleaners do |t|
      
#       t.timestamps null: false
#     end
#   end

#   def down
#     drop_table :cleaners
#   end