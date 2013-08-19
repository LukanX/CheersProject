class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :cheers
      t.integer :utc_offset
      t.boolean :dst, default: true

      t.timestamps
    end
  end
end
