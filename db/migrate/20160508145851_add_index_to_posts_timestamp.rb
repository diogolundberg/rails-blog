class AddIndexToPostsTimestamp < ActiveRecord::Migration
  def change
    add_index :posts, [:author, :created_at]
  end
end
