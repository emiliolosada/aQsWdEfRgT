class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, :comment => "Table for users" do |t|
      t.string :name, :comment => "User name"
      t.string :email, :comment => "User email"

      t.timestamps
    end
  end
end
