class RemoveBackgroundFromCities < ActiveRecord::Migration
  def change
    remove_column :cities, :background
  end
end
