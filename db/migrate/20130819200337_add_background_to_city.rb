class AddBackgroundToCity < ActiveRecord::Migration
  def change
    add_column :cities, :background, :string
  end
end
