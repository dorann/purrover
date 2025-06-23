class CreateBrew < ActiveRecord::Migration[8.0]
  def change
    create_table :brews do |t|
      t.string :coffee_name
      t.string :coffee_roast
      t.decimal :coffee_weight_value
      t.string :coffee_weight_unit
      t.decimal :coffee_parts
      t.decimal :water_parts

      t.timestamps
    end
  end
end
