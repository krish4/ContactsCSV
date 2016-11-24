class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :city
      t.integer :state_id
      t.timestamps null: false
    end
  end
end
