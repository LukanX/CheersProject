class DropDstUtcOffsetFromCities < ActiveRecord::Migration
  def change
  	remove_column :cities, :dst
  	remove_column :cities, :utc_offset
  end
end
