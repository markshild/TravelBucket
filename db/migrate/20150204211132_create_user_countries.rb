class CreateUserCountries < ActiveRecord::Migration
  def change
    create_table :user_countries do |t|
      t.integer :user_id, null: false
      t.integer :country_id, null: false
      t.timestamps null: false
    end
  end
end
