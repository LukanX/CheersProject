class CreateFunFacts < ActiveRecord::Migration
  def change
    create_table :fun_facts do |t|
      t.string :fact_title
      t.string :fact
      t.integer :city_id

      t.timestamps
    end
    add_index :fun_facts, [:city_id]
  end
end
