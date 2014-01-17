class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   "name",            limit: 512,                null: false
      t.string   "email",                                      null: false
      t.string   "password_digest", limit: 256,                null: false
      t.string   "remember_token",  limit: 256
      t.timestamps 
    end
  
    add_index "users", ["id"], unique: true
    add_index "users", ["email"], name: "index_users_on_email", unique: true
    add_index "users", ["remember_token"], name: "index_users_on_remember_token"
  end
end