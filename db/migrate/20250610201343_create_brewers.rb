class CreateBrewers < ActiveRecord::Migration[8.0]
  def change
    create_table :brewers do |t|
      t.string :name

      t.timestamps
    end
  end
end
