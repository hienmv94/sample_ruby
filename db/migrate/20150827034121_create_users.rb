class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :oauth_token
      t.datetime :oauth_expires_at

      t.timestamps null: false
      t.string :password_digest 
      t.string :remember_digest
      t.boolean :admin , default: false
      t.string :activation_digest
      t.boolean :activated ,  default: false
      t.datetime :activated_at
      t.string :reset_digest
      t.datetime :reset_sent_at
    
    end
  end
end
