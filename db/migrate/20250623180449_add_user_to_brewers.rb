class AddUserToBrewers < ActiveRecord::Migration[8.0]
  def change
    add_reference :brewers, :user, null: false, foreign_key: true
  end
end
