class CreatePour < ActiveRecord::Migration[8.0]
  def change
    create_table :pours do |t|
      t.decimal :water_weight_value
      t.string :water_weight_unit
      t.integer :duration_in_seconds

      t.timestamps
    end
  end
end
