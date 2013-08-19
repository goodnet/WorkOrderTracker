class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :password_digest
      t.string :remember_token
      
      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
