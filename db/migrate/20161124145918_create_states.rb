class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :state
      t.string :city
      t.integer :contact_id
      t.timestamps null: false
    end
  end
end
