class AddCommentsToUsers < ActiveRecord::Migration
  def self.up
    set_table_comment :users, "Users table comment"
    set_column_comment :users, :name, "Users name comment"
  end
end
