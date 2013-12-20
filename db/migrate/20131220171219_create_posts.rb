class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :title
      t.text :body 
      t.timestaps
      Post.create(title: "My first post", )
  end

  def down
    drop_table :posts
  end
end
