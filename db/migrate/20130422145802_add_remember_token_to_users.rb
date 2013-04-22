class AddRememberTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :remember_token, :string, :comment => "Secure token to remember user session"
    add_index  :users, :remember_token, :comment => "Index for session token"
  end
end
