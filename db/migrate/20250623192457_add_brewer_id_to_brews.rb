class AddBrewerIdToBrews < ActiveRecord::Migration[8.0]
  def change
    add_reference :brews, :brewer, null: false, foreign_key: true
  end
end
