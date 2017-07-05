class AddQualityscoreToCleaners < ActiveRecord::Migration
  def change
    add_column :cleaners, :quality_score, :integer
  end
end
