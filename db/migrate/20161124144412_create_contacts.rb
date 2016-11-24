class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :address
      t.string :city
      t.string :county
      t.string :state
      t.string :zip
      t.string :phone_one
      t.string :phone_two
      t.string :email
      t.string :web

      t.timestamps null: false
    end
  end
end
