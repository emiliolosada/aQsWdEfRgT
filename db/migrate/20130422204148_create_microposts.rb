class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts, comment: "Micropost table comment" do |t|
      t.string :content, comment: "Content string"
      t.integer :user_id, comment: "User"

      t.timestamps
    end
    add_index :microposts, [:user_id, :created_at]
  end
end
