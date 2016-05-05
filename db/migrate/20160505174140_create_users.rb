class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
        t.string :email, :unique => true
        t.string :password
        t.string :ip_address
        t.string :address
        t.float :latitude
        t.float :longitude
        t.boolean :admin, :default => false

      t.timestamps null: false
    end

    add_index :users, :email
  end
end
