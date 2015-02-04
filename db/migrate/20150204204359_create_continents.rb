class CreateContinents < ActiveRecord::Migration
  def change
    create_table :continents do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end
