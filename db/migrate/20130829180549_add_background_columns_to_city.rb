class AddBackgroundColumnsToCity < ActiveRecord::Migration
  def self.up
    add_attachment :cities, :background
  end

  def self.down
    remove_attachment :cities, :background
  end
end
