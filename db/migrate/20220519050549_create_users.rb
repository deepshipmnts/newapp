class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :username
      t.string :password
      t.integer :phone
      t.string :email
      t.string :shopname
      t.string :shopaddress
      t.string :address
      t.string :district
      t.integer :pincode
      t.string :features

      t.timestamps
    end
  end
end
